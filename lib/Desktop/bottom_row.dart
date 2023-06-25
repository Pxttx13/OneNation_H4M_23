import 'package:flutter/material.dart';
import 'package:one_nation/Widgets/voluteer_join.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(width / 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.3,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join With Us',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Investing in Minds, Transforming Lives: Educating Underprivileged Children.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
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
