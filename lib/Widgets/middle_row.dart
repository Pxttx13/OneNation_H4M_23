import 'package:flutter/material.dart';
import 'package:one_nation/Widgets/data_container.dart';

class MiddleRow extends StatelessWidget {
  const MiddleRow({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width / 12, vertical: width / 15),
      child: Container(
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Helping People \nOur Main Goal',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * 0.35,
                      child: const Text(
                        'Our primary objective is to assist and support individuals in various aspects of their lives. We are dedicated to helping people overcome challenges, achieve personal growth, and improve their overall well-being. Whether it\'s providing information, guidance, or emotional support, our goal is to be a reliable resource and a compassionate companion on their journey. ',
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.35,
                      child: const Text(
                        'We strive to empower individuals, foster positive change, and promote a sense of community by offering assistance, encouragement, and understanding. Together, we can make a meaningful difference in people\'s lives and contribute to a brighter and more inclusive future.\n\n',
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                /*
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'More About',
                      style: TextStyle(fontSize: 20, letterSpacing: 1.5),
                    ))

                    */
              ],
            ),
          ),
          //const DataContainer()
        ]),
      ),
    );
  }
}
