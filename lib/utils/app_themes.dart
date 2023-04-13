import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static get defaultTheme {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      useMaterial3: true,
      primaryColor: Colors.green,
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headlineLarge: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: const TextStyle(fontWeight: FontWeight.w500),
        bodyMedium: const TextStyle(fontSize: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: Colors.green,
        circularTrackColor: Colors.grey[200],
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.green,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
