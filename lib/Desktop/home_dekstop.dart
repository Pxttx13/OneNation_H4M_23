import 'package:flutter/material.dart';
import 'package:one_nation/Desktop/bottom_row.dart';
import 'package:one_nation/Desktop/footer.dart';
import 'package:one_nation/Desktop/start_page.dart';
import 'package:one_nation/Widgets/middle_row.dart';
import 'package:one_nation/Widgets/vedio_player.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  Set<Widget> wids = {StartPage(), MiddleRow(), BottomRow(), Footer()};
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return const SingleChildScrollView(
      child:
          Column(children: [StartPage(), MiddleRow(), BottomRow(), Footer()]),
    );
  }
}
