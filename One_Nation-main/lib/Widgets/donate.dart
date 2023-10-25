import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(100),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //Donate bar
                SizedBox(
                  width: width * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Donate',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Every ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Card(
                        color: Colors.grey,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child:
                                      Image.asset('Assets/Images/qrcode.jpg')),
                            ),
                            const Text(
                              'Scan here ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Accepted ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(FontAwesomeIcons.googlePay),
                            Icon(FontAwesomeIcons.paypal),
                            Icon(FontAwesomeIcons.amazonPay),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //Bank Details

                SizedBox(
                    width: width * 0.4,
                    // ignore: prefer_const_constructors
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Bank Details',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Verify ... ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Account Number',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                      color: Colors.black),
                                ),
                                Text(
                                  '1234512345123',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                      color: Colors.black),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'IFSC Number',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2,
                                    color: Colors.black),
                              ),
                              Text(
                                '1234512345123',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Beneficier name',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2,
                                    color: Colors.black),
                              ),
                              Text(
                                '1234512345123',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ]),
              Container(
                height: 50,
                width: 200,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius:
                      BorderRadius.circular(25), // Adjust the radius as needed
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Go Back',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2),
                    )),
              )
            ],
          )),
    );
  }
}
