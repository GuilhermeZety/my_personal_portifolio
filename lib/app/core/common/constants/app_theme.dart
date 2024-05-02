import 'package:flutter/material.dart';
import 'package:my_personal_portifolio/app/core/common/constants/app_colors.dart';
import 'package:my_personal_portifolio/app/core/common/constants/app_fonts.dart';
import 'package:my_personal_portifolio/app/core/common/extensions/color_extension.dart';

/// > A class that contains all the colors used in the app
class AppTheme {
  static ThemeData get light => ThemeData(
        fontFamily: AppFonts.globalFont,
        primarySwatch: AppColors.primary.toMaterialColor(),
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: AppColors.primary,
          cursorColor: AppColors.primary,
          selectionColor: AppColors.primary.withOpacity(0.2),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: AppColors.grey_700, letterSpacing: 0.4),
          displayMedium: TextStyle(color: AppColors.primary, letterSpacing: 0.4),
          bodyMedium: TextStyle(color: AppColors.grey_700, letterSpacing: 0.4),
          titleMedium: TextStyle(color: AppColors.grey_700, letterSpacing: 0.4),
        ),
      ).copyWith(
        scaffoldBackgroundColor: AppColors.grey_50,
        canvasColor: AppColors.grey_300,
        primaryColor: AppColors.grey_300,
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColors.primary,
          primaryContainer: Colors.white,
          secondary: AppColors.primary,
          background: Colors.white,
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: Colors.white,
          dayStyle: TextStyle(
            color: AppColors.grey_700,
          ),
          surfaceTintColor: Colors.transparent,
          headerHelpStyle: TextStyle(
            color: AppColors.grey_700,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        disabledColor: AppColors.grey_300,
        inputDecorationTheme: InputDecorationTheme(
          isDense: false,
          prefixIconColor: AppColors.grey_700,
          labelStyle: const TextStyle(
            color: AppColors.grey_700,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          hintStyle: const TextStyle(
            color: AppColors.grey_300,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.primary.withOpacity(0.7),
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          //DISABLE  ------
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          //ERROR  ------
          errorStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.error.withOpacity(0.5),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.error,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: AppColors.error,
            ),
          ),
        ),
      );

  static ThemeData get dark => ThemeData(
        fontFamily: AppFonts.globalFont,
        primarySwatch: AppColors.primary.toMaterialColor(),
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: AppColors.primary,
          cursorColor: AppColors.primary,
          selectionColor: AppColors.primary.withOpacity(0.2),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: AppColors.grey_100, letterSpacing: 0.4),
          displayMedium: TextStyle(color: AppColors.grey_100, letterSpacing: 0.4),
          bodyMedium: TextStyle(color: AppColors.grey_100, letterSpacing: 0.4),
          titleMedium: TextStyle(color: AppColors.grey_100, letterSpacing: 0.4),
        ),
      ).copyWith(
        scaffoldBackgroundColor: AppColors.blue_900,
        canvasColor: AppColors.primary,
        primaryColor: AppColors.primary,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: AppColors.primary,
          primaryContainer: AppColors.grey_800,
          secondary: AppColors.primary,
          background: AppColors.blue_900,
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: AppColors.blue_900,
          dayStyle: TextStyle(
            color: AppColors.grey_100,
          ),
          surfaceTintColor: Colors.transparent,
          headerHelpStyle: TextStyle(
            color: AppColors.grey_100,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        disabledColor: AppColors.blue_700,
        inputDecorationTheme: InputDecorationTheme(
          isDense: false,
          prefixIconColor: AppColors.grey_100,
          labelStyle: const TextStyle(
            color: AppColors.grey_100,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          hintStyle: const TextStyle(
            color: AppColors.grey_600,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.primary.withOpacity(0.7),
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          //DISABLE  ------
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          //ERROR  ------
          errorStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.error.withOpacity(0.5),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.error,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: AppColors.error,
            ),
          ),
        ),
      );
}
