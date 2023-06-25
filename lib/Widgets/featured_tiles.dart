import 'package:flutter/material.dart';

class FeaturedTile extends StatefulWidget {
  const FeaturedTile({super.key});

  @override
  State<FeaturedTile> createState() => _FeaturedTileState();
}

class _FeaturedTileState extends State<FeaturedTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 420),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //height: 200,
              color: Colors.green,
              padding: const EdgeInsets.all(8),
              width: 240,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Education',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Technology is the application of knowledge for achieving practical goals in a reproducible way.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
            Container(
              //height: 200,
              color: Colors.blue,
              padding: const EdgeInsets.all(8),
              width: 240,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vision',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Empowering Dreams, Unlocking Potential, Erasing Boundaries,Breaking Limits and Achieving Goals',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
            Container(
              //height: 200,
              color: Colors.red,
              padding: const EdgeInsets.all(8),
              width: 240,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Helping',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Below Poverty Line is enchmark used by the government of India economic disadvantage.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
