import 'package:fake_chat_ui/core/styles/chat_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme({
  Color primaryColor = AppColors.primary,
  Color secondaryColor = AppColors.appSecondary,
  Color scaffoldBackgroundColor = const Color.fromRGBO(250, 250, 250, 1),
}) {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  return ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.fuchsia: CupertinoPageTransitionsBuilder(),
        },
      ),
      errorColor: AppColors.appAlertError,
      primaryColor: primaryColor,
      hoverColor: Colors.white,
      focusColor: Colors.white,
      highlightColor: Colors.white,
      primarySwatch: MaterialColor(primaryColor.value, {
        50: primaryColor.withOpacity(.1),
        100: primaryColor.withOpacity(.2),
        200: primaryColor.withOpacity(.3),
        300: primaryColor.withOpacity(.4),
        400: primaryColor.withOpacity(.5),
        500: primaryColor.withOpacity(.6),
        600: primaryColor.withOpacity(.7),
        700: primaryColor.withOpacity(.8),
        800: primaryColor.withOpacity(.9),
        900: primaryColor.withOpacity(1),
      }),
      colorScheme:
          ColorScheme.light(primary: primaryColor, secondary: secondaryColor),
      fontFamily: GoogleFonts.lato().fontFamily,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      primaryTextTheme: TextTheme(
        headline6: TextStyle(color: primaryColor),
      ),
      primaryColorBrightness: Brightness.light,
      disabledColor: primaryColor.withOpacity(0.4),
      appBarTheme: AppBarTheme(
        color: scaffoldBackgroundColor,
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        titleTextStyle: const TextStyle(fontSize: 16),
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 16),
        bodyText2: TextStyle(fontSize: 16),
        button: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        height: 48,
        textTheme: ButtonTextTheme.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ),
      tooltipTheme: TooltipThemeData(
          margin: const EdgeInsets.only(top: 6),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color.fromRGBO(0, 0, 0, 0.88)),
          textStyle: const TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.white,
          )));
}
