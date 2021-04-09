import 'package:flutter/material.dart';

import 'package:diseno_profesional/src/pages/animaciones_pages.dart';
import 'package:diseno_profesional/src/pages/emergency_page.dart';
import 'package:diseno_profesional/src/pages/graficas_circulares_pages.dart';
import 'package:diseno_profesional/src/pages/header_pages.dart';
import 'package:diseno_profesional/src/pages/pinterest_page.dart';
import 'package:diseno_profesional/src/pages/slider_list_page.dart';
import 'package:diseno_profesional/src/pages/slideshow_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final pageRoutes = <_Route>[
  _Route(FontAwesomeIcons.slideshare, 'Slideshow', SlideshowPage()),
  _Route(FontAwesomeIcons.ambulance, 'Emergencia', EmergencyPage()),
  _Route(FontAwesomeIcons.heading, 'Encabezado', HeaderPages()),
  _Route(FontAwesomeIcons.peopleCarry, 'Cuadro Animado', CuadradoAnimado()),
  _Route(
      FontAwesomeIcons.circleNotch, 'Barra Progreso', GraficasCircularesPage()),
  _Route(FontAwesomeIcons.pinterest, 'Pinteres', PinteresPage()),
  _Route(FontAwesomeIcons.mobile, 'Slivers', SliverListPage()),
];

class _Route {
  final IconData icon;
  final String titulo;
  final Widget page;

  _Route(this.icon, this.titulo, this.page);
}
