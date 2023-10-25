import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confetti/confetti.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VolunteerJoin extends StatefulWidget {
  const VolunteerJoin({super.key});

  @override
  State<VolunteerJoin> createState() => _VolunteerJoinState();
}

class _VolunteerJoinState extends State<VolunteerJoin> {
  final _namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _numbercontroller = TextEditingController();
  final _feedbackcontroller = TextEditingController();

  Future<void> _addvolunteer(context) async {
    String name = _namecontroller.text;
    String email = _emailcontroller.text;
    String number = _numbercontroller.text;
    String feedback = _feedbackcontroller.text;

    if (name.isEmpty || email.isEmpty || number.isEmpty || feedback.isEmpty) {
      final snackBar =
          ShowSnackBar(context, "Fill All The Details!", "Dismiss");
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    // Check Contact Number
    if (number.length != 10 || !RegExp(r'^[0-9]+$').hasMatch(number)) {
      final snackBar =
          ShowSnackBar(context, "Enter a valid 10-digit number", "dismiss");
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    //check for correct email
    if (!email.endsWith('@gmail.com')) {
      final snackBar = ShowSnackBar(
          context, "Enter a valid mail which ends with @gmail.com", 'Dismiss');
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    // Create a map
    final Map<String, dynamic> datacollected = {
      'fullname': name,
      'email': email,
      'contactno': number,
      'feedback': feedback,
    };

    // Add to Backend
    if (kIsWeb) {
      try {
        FirebaseFirestore instance = FirebaseFirestore.instance;
        await instance.collection('Volunteers').doc('kkk').set(datacollected);
        showConfettiDialog(context, 'Congratulations \nYou Are Now a Member');

        debugPrint('Successufully added');
        _emailcontroller.clear();
        _feedbackcontroller.clear();
        _namecontroller.clear();
        _numbercontroller.clear();

/*
        final snackBar = SnackBar(
          content: const Text('Congratulations \nYou Are Now a Member'),
          backgroundColor: (Colors.black12),
          action: SnackBarAction(
            label: 'dismiss',
            backgroundColor: Colors.redAccent,
            disabledTextColor: Colors.amberAccent,
            disabledBackgroundColor: Colors.redAccent,
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      */

        // Navigator.push(
        //     context,
        //     CupertinoPageRoute(
        //       builder: (context) => Congratulations(),
        // ));
      } catch (e) {
        debugPrint('Not Successufully $e');
        final snackBar = ShowSnackBar(context, e.toString(), 'Dismiss');
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  SnackBar ShowSnackBar(context, String msg, String label) {
    return SnackBar(
      content: Text(msg),
      backgroundColor: (Colors.black12),
      action: SnackBarAction(
        label: label,
        backgroundColor: Colors.redAccent,
        disabledTextColor: Colors.amberAccent,
        disabledBackgroundColor: Colors.redAccent,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
  }

  //
  void showConfettiDialog(BuildContext context, String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.grey[700],
      textColor: Colors.white,
      fontSize: 16.0,
    );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              const SizedBox(height: 16.0),
              ConfettiWidget(
                confettiController:
                    ConfettiController(duration: const Duration(seconds: 2)),
                blastDirection: -pi / 2,
                emissionFrequency: 0.05,
                numberOfParticles: 20,
                gravity: 0.05,
              ),
            ],
          ),
        );
      },
    );

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width > 800 ? width * 0.4 : width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Meme
          const Text(
            'Become a Member',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          //Name
          SizedBox(
            width: 500,
            height: 70,
            child: TextField(
              controller: _namecontroller,
              decoration: const InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),

          //Email
          SizedBox(
            width: 500,
            height: 70,
            child: TextFormField(
              // validator: ,
              cursorColor: Colors.black54,
              controller: _emailcontroller,
              decoration: const InputDecoration(
                  labelText: 'Email : xyz@gmail.com',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),

          //Contact
          SizedBox(
            width: 500,
            height: 70,
            child: TextField(
              controller: _numbercontroller,
              decoration: const InputDecoration(
                  labelText: 'Contact number',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),
          //feedback

          SizedBox(
            width: 500,
            height: 100,
            child: TextField(
              controller: _feedbackcontroller,
              //maxLength: 100,
              maxLines: 8,
              decoration: const InputDecoration(
                  labelText: 'FeedBack...',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () async {
                  ConfettiWidget(
                    confettiController: ConfettiController(
                        duration: const Duration(seconds: 2)),
                    blastDirection: -pi / 2,
                    emissionFrequency: 0.05,
                    numberOfParticles: 20,
                    gravity: 0.05,
                  );
                  await _addvolunteer(context);

                  // // Navigator.push(
                  //     context,
                  //     CupertinoPageRoute(
                  //         builder: (context) => Congratulations()));
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )),
          ),
        ],
      ),
    );
  }
}
