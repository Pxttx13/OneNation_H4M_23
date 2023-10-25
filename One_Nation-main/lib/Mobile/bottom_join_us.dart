import 'package:flutter/material.dart';

import '../Widgets/voluteer_join.dart';

class BottomJoinUs extends StatelessWidget {
  const BottomJoinUs({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white60,
      padding: const EdgeInsets.all(8),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.9,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Join With Us',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Investing in Future, Transforming Lives: Educating Underprivileged Children.',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                  ),
                )
              ],
            ),
          ),
          const VolunteerJoin(),
        ],
      ),
    );
  }
}
