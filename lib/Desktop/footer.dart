import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  var c1 = Colors.grey[500];
  var c2 = Colors.grey[600];
  var c3 = Colors.grey[700];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(0.0)),
          gradient: LinearGradient(
              colors: [
                // gradientStartColor, gradientEndColor
                c1!,
                c3!,
                c1!,
              ],
              begin: Alignment.topLeft,
              end: AlignmentDirectional.bottomEnd,
              // begin: const FractionalOffset(0.2, 0.2),
              // end: const FractionalOffset(1.0, 1.0),
              // stops: const [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        padding: const EdgeInsets.all(10),
        //color: Colors.blueGrey[900],
        child: MediaQuery.of(context).size.width < 800
            ? Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BottomBarColumn(
                          heading: 'ABOUT',
                          s1: 'Contact Us',
                          s2: 'About Us',
                          s3: 'Careers',
                        ),
                        BottomBarColumn(
                          heading: 'HELP',
                          s1: 'Payment',
                          s2: 'Cancellation',
                          s3: 'FAQ\'s',
                        ),
                        BottomBarColumn(
                          heading: 'SOCIAL',
                          s1: 'Facebook',
                          s2: 'Toutube',
                          s3: ' Twitter',
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'info_onenation@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: '128, MG Road, Banglore, INDIA - 56124',
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Copyright © 2023 | OneNation | Designed by Acrobot',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )
            : Column(children: [
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const BottomBarColumn(
                        heading: 'ABOUT',
                        s1: 'Contact Us',
                        s2: 'About Us',
                        s3: 'Careers',
                      ),
                      const BottomBarColumn(
                        heading: 'HELP',
                        s1: 'Payment',
                        s2: 'Cancellation',
                        s3: 'FAQ\'s',
                      ),
                      const BottomBarColumn(
                        heading: 'SOCIAL',
                        s1: 'Facebook',
                        s2: 'Toutube',
                        s3: ' Twitter',
                      ),
                      Container(
                        color: Colors.white,
                        width: 2,
                        height: 150,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoText(
                            type: 'Email',
                            text: 'info_onenation@gmail.com',
                          ),
                          SizedBox(height: 5),
                          InfoText(
                            type: 'Address',
                            text: '128, MG Road, Banglore, INDIA - 56124',
                          ),
                        ],
                      ),
                    ]),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Copyright © 2023 | OneNation | Designed by team Acrobot',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ]));
  }
}

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  const BottomBarColumn({
    super.key,
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            s1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            s2,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            s3,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  const InfoText({super.key, required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
