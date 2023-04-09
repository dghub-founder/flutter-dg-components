import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:html/parser.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import '../models/dg_direct_link_model.dart';

class DGDirectLinkProvider extends ChangeNotifier {
  List<DGDirectLinkModel> linkList = [];
  bool isLoading = false;
  static String defaultAgent =
      "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Safari/537.36";

  start(String url) {
    linkList.clear();
    isLoading = true;

    if (url.contains('ok.ru')) {
      okRu(url);
    } else if (url.contains('dropbox.com')) {
      dropBox(url);
    } else if (url.contains('solidfiles')) {
      solidFiles(url);
    } else if (url.contains('drive.google.com')) {
      googleDrive(url);
    } else if (url.contains('fembed.com')) {
      fEmbedFiles(url);
    } else if (url.contains('youtube.com') ||
        url.contains('youtu.be') ||
        url.contains('fb.com') ||
        url.contains('facebook.com')) {
      socialDownloader(url);
    } else if (url.contains('www.mediafire.com')) {
      mediaFire(url);
    } else if (url.contains('xnxx')) {
      xnxx(url);
    } else if (url.contains('vk.com')) {
      vk(url);
    } else {
      linkList.add(DGDirectLinkModel(quality: 'Normal', link: url));
      isLoading = false;
    }
    notifyListeners();
  }

  Future<dom.Document?> _getWebLoadedData(String url,
      {Map<String, String>? header}) async {
    try {
      final uri = Uri.parse(url);
      final response = await http.get(uri, headers: header);
      dom.Document html = dom.Document.html(response.body);

      return html;
    } catch (e) {
      return null;
    }
  }

  socialDownloader(String url) async {
    HeadlessInAppWebView(
      initialUrlRequest: URLRequest(
          url: Uri.parse(
              utf8.decode(base64.decode('aHR0cHM6Ly9lbi5zYXZlZnJvbS5uZXQv')))),
      onLoadStop: (controller, url) async {
        await controller.evaluateJavascript(source: '''
document.querySelector('#sf_url').value = '$url'
document.querySelector('#sf_submit').click()
''');
        var data = await Future.delayed(const Duration(seconds: 3), () async {
          var htm = await controller.getHtml();
          var document = parse(htm);

          try {
            String? thumbnail = document
                .querySelector(".media-result .clip img")
                ?.attributes['src'];

            var info = document.querySelector(".info-box");
            List<dom.Element> linkGroup = [
              ...info!.querySelectorAll(".link-group a")
            ];

            linkGroup.map((element) {
              String? href = element.attributes['href'];
              String? text = element.text;

              linkList.add(DGDirectLinkModel(
                  quality: text.toString(), link: href.toString()));
            }).toList();
          } catch (e) {}
          isLoading = false;
          notifyListeners();
        });
      },
    )
      ..run()
      ..dispose();
  }

  googleDrive(String url) async {
    String rUrl = url;

    url = rUrl
        .replaceAll('/file/d/', '/u/1/uc?id=')
        .replaceAll('/view?usp=share_link', '&export=download')
        .replaceAll('/view', '&export=download');

    HeadlessInAppWebView(
      initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
              cacheEnabled: true,
              useOnLoadResource: true,
              javaScriptCanOpenWindowsAutomatically: true,
              mediaPlaybackRequiresUserGesture: false,
              useOnDownloadStart: true)),
      onDownloadStartRequest: (controller, downloadStartRequest) {
        linkList.add(DGDirectLinkModel(
            quality: 'Normal', link: downloadStartRequest.url.toString()));
        print('GoogleDriveDirectLink: ${downloadStartRequest.url}');
      },
      initialUrlRequest: URLRequest(url: Uri.parse(url)),
      onLoadStop: (controller, url) async {
        await controller.evaluateJavascript(
            source: '''document.querySelector('#uc-download-link').click()''');

        try {
          var htm = await controller.getHtml();
          var document = parse(htm);
          print(document.body);
          isLoading = false;
          notifyListeners();
        } catch (e) {
          print(e.toString());
        }
      },
    )
      ..run()
      ..dispose();
  }

  mediaFire(String url) async {
    await _getWebLoadedData(url).then((value) {
      try {
        var href = value!
            .querySelectorAll('#downloadButton > a')[0]
            .attributes['href']
            .toString();

        linkList.add(DGDirectLinkModel(quality: 'Normal', link: href));

        isLoading = false;
        notifyListeners();
      } catch (e) {
        print(e.toString());
      }
    });
  }

  vk(String url) async {
    await _getWebLoadedData(url, header: {"User-agent": defaultAgent})
        .then((value) {
      try {
        String? sc1 = RegExp("al_video.php', ?(\\{.*])", multiLine: true)
            .firstMatch(value!.body!.text.toString())!
            .group(1);
        String? sc2 = RegExp("\\}, ?(.*)", multiLine: true)
            .firstMatch(sc1.toString())!
            .group(1);
        String x240 = "url240",
            x360 = "url360",
            x480 = "url480",
            x720 = "url720",
            x1080 = "url1080";

        var decode = jsonDecode(sc2!);
        var getLink = decode[4]['player']['params'][0];

        try {
          linkList.add(DGDirectLinkModel(
              quality: '240P', link: getLink[x240].toString().trim()));
          print(getLink[x240].toString());
        } catch (e) {}
        try {
          linkList.add(DGDirectLinkModel(
              quality: '360P', link: getLink[x360].toString().trim()));
          print(getLink[x360].toString());
        } catch (e) {}

        try {
          linkList.add(DGDirectLinkModel(
              quality: '480P', link: getLink[x480].toString().trim()));
          print(getLink[x480].toString());
        } catch (e) {}
        try {
          linkList.add(DGDirectLinkModel(
              quality: '720P', link: getLink[x720].toString().trim()));
        } catch (e) {}
        try {
          linkList.add(DGDirectLinkModel(
              quality: '1080P', link: getLink[x1080].toString().trim()));
        } catch (e) {}
        isLoading = false;
        notifyListeners();
      } catch (e) {
        print(e.toString());
      }
    });
  }

  xnxx(String url) async {
    HeadlessInAppWebView(
      initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
              allowFileAccessFromFileURLs: false,
              allowUniversalAccessFromFileURLs: false,
              cacheEnabled: false,
              useOnLoadResource: true,
              javaScriptCanOpenWindowsAutomatically: true,
              mediaPlaybackRequiresUserGesture: false)),
      initialUrlRequest: URLRequest(url: Uri.parse(url)),
      onLoadStop: (controller, url) async {
        try {
          var htm = await controller.getHtml();
          var document = parse(htm);
          var script = document.body!.text;
          //print(document.body);

          if (script.contains("html5player.setVideoUrlLow")) {
            List<String> lines = script.split("\n");
            print(lines.length);
            await Future.wait(lines.map((line) async {
              if (line.contains("html5player.setVideoUrlLow")) {
                String lowQ = line
                    .replaceAll("html5player.setVideoUrlLow('", "")
                    .replaceAll("');", "");

                print(lowQ);
                linkList.add(DGDirectLinkModel(quality: 'SD', link: lowQ));
              }
            }));
          }
          if (script.contains("html5player.setVideoUrlHigh")) {
            List<String> lines = script.split("\n");
            await Future.wait(lines.map((line) async {
              if (line.contains("html5player.setVideoUrlHigh")) {
                String highQ = line
                    .replaceAll("html5player.setVideoUrlHigh('", "")
                    .replaceAll("');", "");
                linkList.add(DGDirectLinkModel(quality: 'HD', link: highQ));
              }
            }));
          }
        } catch (e) {}

        isLoading = false;
        notifyListeners();
      },
    )
      ..run()
      ..dispose();
  }

  dropBox(String url) {
    linkList = [
      DGDirectLinkModel(
          quality: 'Normal', link: url.replaceAll('?dl=0', '?dl=1'))
    ];
    isLoading = false;
    notifyListeners();
  }

  okRu(String url) async {
    await _getWebLoadedData(url).then((value) {
      try {
        var unescape = HtmlUnescape();

        var sc1 = value!
            .getElementsByClassName('vp_video')
            .map((e) => e.innerHtml.trim())
            .toList()[0];

        String? sc2 = RegExp(r'data-options="(.*?)"', multiLine: true)
            .firstMatch(sc1)!
            .group(1);

        String sc3 = unescape.convert(sc2!);

        var sc4 = jsonDecode(sc3);

        var sc5 = jsonDecode(sc4['flashvars']['metadata']);

        var list = sc5['videos'];

        for (var i = 0; i < list.length; i++) {
          String url = list[i]["url"];
          String name = list[i]["name"];

          switch (name) {
            case "mobile":
              linkList.add(DGDirectLinkModel(quality: '144p', link: url));
              break;
            case "lowest":
              linkList.add(DGDirectLinkModel(quality: '240p', link: url));
              break;
            case "low":
              linkList.add(DGDirectLinkModel(quality: '360p', link: url));

              break;
            case "sd":
              linkList.add(DGDirectLinkModel(quality: '480p', link: url));

              break;
            case "hd":
              linkList.add(DGDirectLinkModel(quality: '720p', link: url));

              break;
            case "full":
              linkList.add(DGDirectLinkModel(quality: '1080p', link: url));

              break;
            case "quad":
              linkList.add(DGDirectLinkModel(quality: '2000p', link: url));
              break;
            case "ultra":
              linkList.add(DGDirectLinkModel(quality: '2000p', link: url));
              break;
            default:
              linkList.add(DGDirectLinkModel(quality: 'Default', link: url));
          }
        }
        print(jsonEncode(list));

        isLoading = false;
        notifyListeners();
      } catch (e) {
        print(e.toString());
      }
    });
  }

  solidFiles(String url) async {
    await _getWebLoadedData(url).then((value) {
      try {
        String? sc1 = RegExp(r'downloadUrl":"(.*?)"', multiLine: true)
            // String? sc1 = RegExp(r"viewerOptions\'\,\ (.*?)\)\;", multiLine: true)
            .firstMatch(value!.body!.text)!
            .group(1);
        //print('SoildFiles Test' + value.body!.text);
        print('SoildFiles Test: ' + sc1!);

        linkList.add(DGDirectLinkModel(quality: 'Normal', link: sc1));

        isLoading = false;
        notifyListeners();
      } catch (e) {
        print(e.toString());
      }
    });
  }

  fEmbedFiles(String url) async {
    String? id = RegExp("(v|f)(\\/|=)(.+)(\\/|&)?", multiLine: true)
        .firstMatch(url)!
        .group(3)!
        .replaceAll("&|/", "");
    String reUrl = "https://www.fembed.com/api/source/" + id;

    await _getWebLoadedData(reUrl).then((value) async {
      try {
        final response = await http.post(Uri.parse(reUrl));

        var data = jsonDecode(response.body);

        for (int i = 0; i < data['data'].length; i++) {
          linkList.add(DGDirectLinkModel(
              quality: data['data'][i]['label'],
              link: data['data'][i]['file']));
        }

        isLoading = false;
        notifyListeners();
      } catch (e) {
        print(e.toString());
      }
    });
  }
}
