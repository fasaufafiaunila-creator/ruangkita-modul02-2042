import 'package:flutter/material.dart';

import 'modul02/studi_kasus/ruang_praktikum.dart';

void main() {
  runApp(const RuangKitaApp());
}

class RuangKitaApp extends StatefulWidget {
  const RuangKitaApp({super.key});

  @override
  State<RuangKitaApp> createState() => _RuangKitaAppState();
}

class _RuangKitaAppState extends State<RuangKitaApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RuangKita',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: RuangPraktikumPage(
        onToggleTheme: _toggleTheme,
        isDarkMode: _themeMode == ThemeMode.dark,
      ),
    );
  }
}