import 'package:flutter/material.dart';
import 'package:one_nation/Desktop/bottom_row.dart';
import 'package:one_nation/Desktop/footer.dart';
import 'package:one_nation/Desktop/start_page.dart';
import 'package:one_nation/Mobile/bottom_join_us.dart';
import 'package:one_nation/Widgets/middle_row.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      child: const Column(
        children: [
          StartPage(),
          MiddleRow(),
          BottomJoinUs(),
          SizedBox(
            height: 25,
            //color: Colors.grey,
          ),
          Footer()
        ],
      ),
    );
  }
}
