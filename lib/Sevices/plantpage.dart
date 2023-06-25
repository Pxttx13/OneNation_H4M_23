import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlantPage extends StatelessWidget {
  PlantPage({super.key});

  Set<String> links = {
    'https://www.odanadi.org/',
    'https://mysore.nic.in/en/horticulture/',
    'http://Green.Mysore.org',
  };
  Set<String> names = {
    'Odanadi Seva Samsthe',
    'Mysore Horticulture Society',
    'Green Mysuru',
  };

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          child: Column(
            children: [
              Stack(
                children: [
                  // Image
                  SizedBox(
                    width: width,
                    height: 400,
                    child: Image.asset(
                      'Assets/Images/plant2.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Text at the bottom
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.only(top: 400),
                    //width: 200,
                    child: const Center(
                      child: Text(
                        'Pet Service Providers',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Other widgets below the image

              for (int i = 0; i < names.length; i++)
                Card(
                  elevation: 7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 50,
                      width: width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            names.elementAt(i),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL(links.elementAt(i));
                            },
                            child: const Text(
                              'Click here',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    //final Uri uri = Uri(scheme: 'https', host: url);
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
