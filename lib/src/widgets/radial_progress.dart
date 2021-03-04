import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  final porcentaje;

  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;

  const RadialProgress(
      {@required this.porcentaje,
      this.colorPrimario = Colors.blue,
      this.colorSecundario = Colors.grey,
      this.grosorSecundario = 4,
      this.grosorPrimario = 8});

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  double porcentajeAnterior;

  @override
  void initState() {
    porcentajeAnterior = widget.porcentaje;
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward(from: 0.0);

    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;
    return AnimatedBuilder(
        animation: controller,
        //  child: child,
        builder: (BuildContext context, Widget child) {
          return Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
              painter: _MiRadialProgress(
                  (widget.porcentaje - diferenciaAnimar) +
                      (diferenciaAnimar * controller.value),
                  widget.colorPrimario,
                  widget.colorSecundario,
                  widget.grosorSecundario,
                  widget.grosorPrimario),
            ),
          );
        });
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;

  final Color colorPrimario;
  final Color colorSecundario;

  final double grosorPrimario;
  final double grosorSecundario;

  _MiRadialProgress(
    this.porcentaje,
    this.colorPrimario,
    this.colorSecundario,
    this.grosorSecundario,
    this.grosorPrimario,
  );

  @override
  void paint(Canvas canvas, Size size) {
    //Circulo completado
    final paint = new Paint()
      ..strokeWidth = grosorSecundario
      ..color = colorSecundario
      ..style = PaintingStyle.stroke;

    final Offset center =
        new Offset(size.width * 0.5, size.height / 2); //*0.5 == /2
    final double radio = min(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radio, paint);

    //Arco
    final paintArco = new Paint()
      ..strokeWidth = grosorPrimario
      ..color = colorPrimario
      //StrokeCap es para poner border redondeado
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    //Parte que se deberá ir llenando

    double arcoAngle = 2 * pi * (porcentaje / 100); // 40/100 -> 40%
    canvas.drawArc(
        //Espacio donde queremos ubicarlo
        Rect.fromCircle(center: center, radius: radio),
        //El angulo iniciar
        -pi / 2,
        //Angulo de llenado
        arcoAngle,
        false,
        paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
