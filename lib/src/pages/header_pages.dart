import 'package:diseno_profesional/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:diseno_profesional/src/widgets/headers.dart';
import 'package:provider/provider.dart';

class HeaderPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accentColor =
        Provider.of<ThemeChanger>(context).currentTheme.accentColor;
    return Scaffold(
      body: HeaderOla(
        color: accentColor,
      ),
    );
  }
}
