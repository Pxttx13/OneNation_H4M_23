import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  final _controller = ConfettiController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  Path createCustomConfettiPath(
      Size size, double x, double y, double velocity) {
    final path = Path();
    final radius = 5.0 + Random().nextDouble() * 5.0;
    path.addOval(Rect.fromCircle(center: Offset(x, y), radius: radius));
    return path;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller.play();

    // Stop the confetti after 5 seconds
    Timer(const Duration(seconds: 1), () {
      _controller.stop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ConfettiWidget(
        confettiController: _controller,
        blastDirection: pi / 2,
        emissionFrequency: 0.05,
        numberOfParticles: 20,
        maxBlastForce: 10,
        minBlastForce: 5,
        gravity: 0.1,
        colors: const [
          Colors.pink,
          Colors.red,
          Colors.blue,
          Colors.green,
          Colors.yellow,
        ],
      )),
    );
  }
}
