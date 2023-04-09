import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_provider/theme_provider.dart';

class Themes {
  static List<AppTheme> get() => [
        AppTheme.light(id: 'light'),
        AppTheme.dark(id: 'dark'),
        AppTheme(
            id: "light_default", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Color(0xff0643A5))),
        AppTheme(
            id: "light_red", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Color(0xffd5212e))),
        AppTheme(
            id: "light_green", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Colors.green)),
        AppTheme(
            id: "light_blue", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Color(0xff0643A5))),
        AppTheme(
            id: "light_popular", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Color(0xff556ee5))),
        AppTheme(
            id: "light_cyan", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Colors.cyan)),
        AppTheme(
            id: "light_orange", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Colors.orange)),
        AppTheme(
            id: "light_pink", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Colors.pink)),
        AppTheme(
            id: "light_purple", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: lightThemeData(primaryColor: Colors.purple)),
        ////////////////////----Dark
        AppTheme(
            id: "dark_default", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Color(0xff0643A5))),
        AppTheme(
            id: "dark_red", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Color(0xffd5212e))),
        AppTheme(
            id: "dark_green", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Colors.green)),
        AppTheme(
            id: "dark_blue", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Color(0xff0643A5))),
        AppTheme(
            id: "dark_popular", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Color(0xff556ee5))),
        AppTheme(
            id: "dark_cyan", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Colors.cyan)),
        AppTheme(
            id: "dark_orange", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Colors.orange)),
        AppTheme(
            id: "dark_pink", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Colors.pink)),
        AppTheme(
            id: "dark_purple", // Id(or name) of the theme(Has to be unique)
            description: "My Default Theme", // Description of theme
            data: darkThemeData(primaryColor: Colors.purple)),
      ];

  static ThemeData lightThemeData({Color primaryColor = Colors.orange}) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Color(0xfff4f4f4),
        // foregroundColor: Colors.white //here you can give the text color
      ),
      iconTheme: const IconThemeData(color: Colors.grey),
      unselectedWidgetColor: Colors.grey,
      toggleableActiveColor: primaryColor,
      canvasColor: const Color(0xffffffff),
      primaryColorLight: Colors.black,
      indicatorColor: const Color(0xfff4f4f4),
      cardColor: const Color(0xffffffff),
      primaryColor: primaryColor,
      backgroundColor: const Color(0xfff4f4f4),
      scaffoldBackgroundColor: const Color(0xfff4f4f4),
      fontFamily: GoogleFonts.padauk().fontFamily,
      textTheme: TextTheme(
        headline1:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.black)),
        headline2:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.black)),
        bodyText1:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.black)),
        bodyText2:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.black)),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
    );
  }

  static ThemeData darkThemeData({Color primaryColor = Colors.orange}) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Color.fromARGB(250, 30, 38, 49),

        // foregroundColor: Colors.white //here you can give the text color
      ),
      iconTheme: const IconThemeData(color: Colors.grey),
      unselectedWidgetColor: Colors.grey,
      toggleableActiveColor: primaryColor,
      canvasColor: const Color.fromARGB(250, 37, 45, 58),
      primaryColorLight: Colors.white,
      indicatorColor: const Color.fromARGB(250, 30, 38, 49).withOpacity(0.9),
      cardColor: const Color.fromARGB(250, 37, 45, 58),
      primaryColor: primaryColor,
      backgroundColor: const Color.fromARGB(250, 30, 38, 49),
      scaffoldBackgroundColor: const Color.fromARGB(250, 30, 38, 49),
      fontFamily: GoogleFonts.padauk().fontFamily,
      textTheme: TextTheme(
        headline1:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.white)),
        headline2:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.white)),
        bodyText1:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.white)),
        bodyText2:
            GoogleFonts.padauk(textStyle: const TextStyle(color: Colors.white)),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
    );
  }
}
