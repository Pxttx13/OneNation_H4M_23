import 'package:flutter/material.dart';

class FeaturedTile extends StatefulWidget {
  const FeaturedTile({super.key});

  @override
  State<FeaturedTile> createState() => _FeaturedTileState();
}

class _FeaturedTileState extends State<FeaturedTile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(
            left: width * 0.1,
            right: width * 0.1,
            top: 420,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //height: 200,
                color: Colors.green,
                margin: const EdgeInsets.symmetric(horizontal: 2),
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
                margin: const EdgeInsets.symmetric(horizontal: 2),
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
                margin: const EdgeInsets.symmetric(horizontal: 2),
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
                        'Let\'s Join hands to support everyone access to resources which make humanity proud on us..',
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
      ),
    );
  }
}
