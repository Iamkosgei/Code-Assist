import 'package:code_assist/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
    snackBarTheme: const SnackBarThemeData(backgroundColor: Colors.deepPurple),
    textTheme: GoogleFonts.lexendDecaTextTheme(),
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade200,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      isDense: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.deepPurple.withOpacity(.2);
          }
          return Colors.deepPurple;
        }),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 14,
          ),
        ),
        enableFeedback: true,
        minimumSize: MaterialStateProperty.all(
          const Size(
            double.infinity,
            48,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
      background: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ));

final darkTheme = ThemeData(
  textTheme: darkTextTheme,
  useMaterial3: true,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade200,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    isDense: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.deepPurple.withOpacity(.2);
        }
        return Colors.deepPurple;
      }),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 14,
        ),
      ),
      enableFeedback: true,
      minimumSize: MaterialStateProperty.all(
        const Size(
          double.infinity,
          48,
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
    background: backgroundColor,
  ),
  scaffoldBackgroundColor: primaryDarkColor,
  appBarTheme: const AppBarTheme(
    color: primaryDarkColor,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
);

final darkTextTheme = GoogleFonts.lexendDecaTextTheme().copyWith(
  bodyMedium: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  ),
  titleSmall: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.white70,
  ),
);
