import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:user_app/dg-components/library/dg-direct-link/providers/dg-direct-link-provider.dart';
import 'package:user_app/dg-components/system/dg-providers/qr_provider.dart';
import 'dg-providers/background_weather_animation_provider.dart';
import 'dg-providers/language_provider.dart';
import 'dg-providers/scroll_to_hide_provider.dart';
import 'dg-providers/theme_change_provider.dart';

class DGProviders {
  static List<SingleChildWidget> get() => [
        ///---DGHub
        ChangeNotifierProvider(create: (_) => ScrollToHideProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangeProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
        ChangeNotifierProvider(create: (_) => DGDirectLinkProvider()),
        ChangeNotifierProvider(create: (_) => QRProvider()),
        ChangeNotifierProvider(
            create: (_) => BackgroundWeatherAnimationProvider())

        ///---DGHub
      ];
}
