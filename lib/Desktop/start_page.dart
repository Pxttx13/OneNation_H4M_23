import 'package:flutter/material.dart';
import 'package:one_nation/Widgets/featured_tiles.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(children: [
      Stack(children: [
        SizedBox(
          width: screenSize.width,
          height: 500,
          child: Image.asset(
            'Assets/Images/onen.jpg',
            fit: BoxFit.fill,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 100, left: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Need..',
                style: TextStyle(
                    fontSize: 20, color: Colors.white, letterSpacing: 2),
              ),
              Text(
                'Helping Hands \nTo Those In Need',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    wordSpacing: 3,
                    letterSpacing: 2),
              ),
              // Text(
              //   'Below Poverty Line',
              //   style: TextStyle(
              //       fontSize: 20, color: Colors.white, letterSpacing: 2),
              // )
            ],
          ),
        )
      ]),
      const FeaturedTile(),
    ]);
  }
}
