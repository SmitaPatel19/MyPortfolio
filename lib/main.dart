import 'package:flutter/material.dart';
import 'package:mynewportfolio/pages/home.dart';
import 'package:mynewportfolio/theme/theme_provider.dart';
import 'package:mynewportfolio/theme/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
