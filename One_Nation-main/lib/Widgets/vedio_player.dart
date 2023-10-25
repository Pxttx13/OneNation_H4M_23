import 'package:flutter/material.dart';

class VedioPlayer extends StatefulWidget {
  const VedioPlayer({super.key});

  @override
  State<VedioPlayer> createState() => _VedioPlayerState();
}

class _VedioPlayerState extends State<VedioPlayer> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 6,
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Text('add vedio here'),
        ),
      ),
    );
  }
}
