import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_nation/Sevices/service_home.dart';
import 'package:one_nation/Widgets/donate.dart';

class DesktopAppbar extends StatefulWidget {
  //final context;
  const DesktopAppbar({
    super.key,
  });
  @override
  State<DesktopAppbar> createState() => _DesktopAppbarState();
}

class _DesktopAppbarState extends State<DesktopAppbar> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.grey[300],
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Expanded(
            //child:
            SizedBox(
              width: screenSize.width / 9,
            ),
            const Text(
              'One Nation',
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 26,
                fontWeight: FontWeight.w900,
                letterSpacing: 3,
              ),
            ),
            SizedBox(width: screenSize.width / 15),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                              color: _isHovering[0]
                                  ? const Color(0xFF077bd7)
                                  : const Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 3,
                            width: 20,
                            //color: Colors.blue,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.red, Colors.cyan])),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => ServiceHome()));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Services',
                          style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.cyan
                                  : const Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: const Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                              color: _isHovering[2]
                                  ? const Color(0xFF077bd7)
                                  : const Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: const Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[3] = true : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Contact',
                          style: TextStyle(
                              color: _isHovering[3]
                                  ? const Color(0xFF077bd7)
                                  : const Color(0xFF077bd7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: const Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 35),
                  /*
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => DonatePage()));
                      },
                      child: Text('Donate'))
                    



                    */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
