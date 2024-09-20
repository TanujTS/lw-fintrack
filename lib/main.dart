import 'package:flutter/material.dart';
import 'package:fintrack/colorscheme/color_extensions.dart';
import 'package:fintrack/pages/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinTrack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
          surface: TColor.gray50,
          primary: TColor.primary,
          primaryContainer: TColor.gray60,
          secondary: TColor.secondary,
        ),
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          backgroundColor: TColor.primary,
          foregroundColor: TColor.primaryText,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color.fromARGB(255, 26, 14, 14),
          selectedItemColor: TColor.primary,
          unselectedItemColor: TColor.gray50,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
      home: const MainTabView(),
    );
  }
}
