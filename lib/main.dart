import 'package:flutter/material.dart';

import 'package:diseno_profesional/src/pages/slideshow_page.dart';

// import 'package:diseno_profesional/src/pages/graficas_circulares_pages.dart';
// import 'package:diseno_profesional/src/labs/slidershow_page.dart';

// import 'package:diseno_profesional/src/retos/cuadrado_animado_page.dart';

// import 'package:diseno_profesional/src/pages/header_pages.dart';
// import 'package:diseno_profesional/src/pages/animaciones_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño Profesional',
      home: SlideshowPage(),
    );
  }
}
