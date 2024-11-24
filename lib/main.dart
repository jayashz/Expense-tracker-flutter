import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.amber);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(
      MaterialApp(
        theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: kColorScheme.inverseSurface,
            foregroundColor: kColorScheme.onPrimary,
            titleTextStyle:
                TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          cardTheme: CardTheme().copyWith(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.onPrimaryContainer),
          ),
        ),
        home: Expenses(),
        darkTheme: ThemeData.dark(),
      ),
    );
  });
}
