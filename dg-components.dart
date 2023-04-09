import 'dart:io';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'constants/globals.dart';
import 'constants/languages.dart';
import 'constants/providers.dart';
import 'constants/themes.dart';
import 'system/dg-providers.dart';
import 'system/dg-providers/language_provider.dart';
import 'widget_tools/app_restart.dart';
import 'widget_tools/dg_scroll_behavior.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'routes/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return ThemeProvider(
      defaultThemeId: defaultTheme,
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: Themes.get(),
      /*onInitCallback: (controller, previouslySavedThemeFuture) async {
         String? savedTheme = await previouslySavedThemeFuture;

        if (savedTheme != null) {
          // If previous theme saved, use saved theme
          controller.setTheme(savedTheme);
        } else {
          // If previous theme not found, use platform default
          Brightness platformBrightness =
              SchedulerBinding.instance.window.platformBrightness;
          if (platformBrightness == Brightness.dark) {
            controller.setTheme('dark');
          } else {
            controller.setTheme('light');
          }
          // Forget the saved theme(which were saved just now by previous lines)
          controller.forgetSavedTheme();
        }
      },*/
      child: ThemeConsumer(child: Builder(builder: (themeContext) {
        isDarkTheme = ThemeProvider.themeOf(themeContext).id.contains('dark');
        return Consumer<LanguageProvider>(builder: (context, state, child) {
          return MaterialApp.router(
            builder: (context, child) {
              return ScrollConfiguration(
                  behavior: AppBehavior(), child: child!);
            },
            locale: state.locale,
            supportedLocales: languages,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            scrollBehavior: DGScrollBehavior(),
            theme: ThemeProvider.themeOf(themeContext).data,
            // darkTheme: CustomTheme.darkTheme,
            // themeMode: currentTheme.currentTheme,
            debugShowCheckedModeBanner: true,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        });
      })),
    );
  }
}

class DGComponents extends StatefulWidget {
  const DGComponents({Key? key}) : super(key: key);

  @override
  State<DGComponents> createState() => _DGComponentsState();
}

class _DGComponentsState extends State<DGComponents> {
  @override
  Widget build(BuildContext context) {
    return AppRestart(
        child: MultiProvider(
            providers: Providers.get(),
            child: MultiProvider(
                providers: DGProviders.get(), child: const MyApp())));
  }
}

class DGComponentsInstall {
  static get({required bool setupLogging}) async {
    // await DartVLC.initialize(useFlutterNativeView: true);

    if (setupLogging) {
      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen(
          (rec) => {print("${rec.level.name}: ${rec.time} : ${rec.message}")});
    }
    if (!kIsWeb) {
      if (!Platform.isAndroid) {
        doWhenWindowReady(() {
          final win = appWindow;
          const initialSize = Size(400, 600);
          //const initialSize = Size(1000, 600);
          win.minSize = initialSize;
          win.size = initialSize;
          win.alignment = Alignment.center;
          // win.title = "Custom window with Flutter";
          win.show();
        });
      }
    }
  }
}

class AppBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
