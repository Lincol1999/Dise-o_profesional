import 'package:diseno_profesional/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:diseno_profesional/src/pages/launcher_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => new ThemeChanger(2), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      title: 'Diseño Profesional',
      home: LauncherPage(),
    );
  }
}
