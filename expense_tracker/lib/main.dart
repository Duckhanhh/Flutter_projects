import 'package:expense_tracker/widgets/expense.dart';
import 'package:flutter/material.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 42, 124, 211));

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        //scaffoldBackgroundColor: Colors.grey[900],
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: const Color.fromARGB(255, 181, 214, 250),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onInverseSurface,
          //foregroundColor: Colors.black54,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.onSecondaryContainer,
            foregroundColor: Colors.white,
          ),
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.surface,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        iconTheme: const IconThemeData().copyWith(
          color: const Color.fromARGB(255, 38, 78, 119),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            iconColor: kColorScheme.onSecondaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      //themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
