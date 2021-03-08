import 'package:diseno_profesional/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.purple,
        body: Column(
      children: [
        Expanded(child: Misledeshow()),
        Expanded(child: Misledeshow()),
      ],
    ));
  }
}

class Misledeshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slideshow(
      bulletPrimario: 13,
      bulletSecundario: 11,
      // puntosArriba: true,
      colorPrimario: Color(0xffFF6389),
      // colorsSecundario: Colors.white,
      slides: [
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
        SvgPicture.asset('assets/svgs/slide-4.svg'),
      ],
    );
  }
}
