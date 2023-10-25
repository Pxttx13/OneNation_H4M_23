import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_nation/Widgets/donate.dart';

class DataContainer extends StatefulWidget {
  const DataContainer({super.key});

  @override
  State<DataContainer> createState() => _DataContainerState();
}

class _DataContainerState extends State<DataContainer> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.4,
      color: Colors.yellowAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(),
          const Text(
            'Total Donation',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
                color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Collection -\$6M',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Target -\$10M',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const DonatePage()));
              },
              child: const Text(
                'Donate Now',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.pinkAccent,
                ),
              ))
        ],
      ),
    );
  }
}
