import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

import '../../tools/dg-tools.dart';
import '../imageview/imageview.dart';

class ImagePickerSingle extends StatefulWidget {
  final Function(File) resultPath;
  final String? imageUrl;
  final double imageWidth;
  final double imageHeight;
  const ImagePickerSingle({
    this.imageUrl,
    required this.resultPath,
    this.imageWidth = 100,
    this.imageHeight = 130,
    Key? key,
  }) : super(key: key);

  @override
  State<ImagePickerSingle> createState() => _ImagePickerSingleState();
}

class _ImagePickerSingleState extends State<ImagePickerSingle> {
  TextEditingController imageTextController = TextEditingController();
  String fileSize = 'N/A';
  String filePath = 'N/A';
  String fileExtension = 'N/A';

  @override
  void initState() {
    if (widget.imageUrl != null) {
      filePath = widget.imageUrl!;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: pick,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (filePath == 'N/A')
              Container(
                  color: theme.cardColor,
                  width: widget.imageWidth,
                  height: widget.imageHeight,
                  child: const Icon(Icons.add_photo_alternate_outlined,
                      color: Colors.grey))
            else if (filePath.contains('http://') ||
                filePath.contains('https://'))
              ImageViewNetwork(
                radius_top_left: 10,
                radius_bottom_left: 10,
                url: filePath,
                width: widget.imageWidth,
                height: widget.imageHeight,
              )
            else
              Image.file(
                File(filePath),
                fit: BoxFit.cover,
                width: widget.imageWidth,
                height: widget.imageHeight,
                errorBuilder: (context, path, error) {
                  return Image.asset(
                    'assets/images/image_error_square.png',
                    fit: BoxFit.cover,
                    width: widget.imageWidth,
                    height: widget.imageHeight,
                  );
                },
              ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Marquee(
                      child: Text(
                        'Path : $filePath',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Size : $fileSize',
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Extension : $fileExtension',
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void pick() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg', 'gif']);

    if (result != null) {
      File file = File(result.files.single.path!);
      setState(() {
        fileExtension = result.files.single.extension!.toString();
        filePath = result.files.single.path!.toString();
        fileSize = DGTools.getSize(result.files.single.size.toDouble());
        widget.resultPath(file);
      });
    } else {}
  }
}
