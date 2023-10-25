import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_nation/Sevices/service_home.dart';

class AppBarMobile extends StatefulWidget {
  const AppBarMobile({super.key});

  @override
  State<AppBarMobile> createState() => _AppBarMobileState();
}

class _AppBarMobileState extends State<AppBarMobile> {
  List<String> titles = ['Home', 'Services', 'About Us', 'Join With Us'];

  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

  void navigateToPetPage() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => const ServiceHome()));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
        // mainAxisSize: MainAxisSize.max,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'One Nation',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w400, letterSpacing: 2),
          )),
          const Divider(
            color: Colors.black54,
            height: 2,
          ),
          for (int i = 0; i < 4; i++)
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[i] = true
                                    : _isHovering[i] = false;
                              });
                            },
                            onTap: () {
                              switch (i) {
                                case 1:
                                  navigateToPetPage();
                                  break;
                                default:
                                  break;
                              }
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  titles[i],
                                  style: TextStyle(
                                      color: _isHovering[i]
                                          ? Colors.white
                                          : Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 5),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  maintainSize: true,
                                  visible: _isHovering[i],
                                  child: Container(
                                    height: 3,
                                    width: 20,
                                    //color: Colors.blue,
                                    decoration: const BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                      Colors.black26,
                                      Colors.blueGrey
                                    ])),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ])),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    color: Colors.black54,
                    height: 3,
                  ),
                ),
              ],
            ),
        ]);
  }
}
