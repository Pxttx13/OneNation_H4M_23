import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PetPage extends StatelessWidget {
  Set<String> links = {
    'https://www.resqct.org/',
    'https://www.awbi.in/hawo.html',
    'https://www.mysurupinjrapole.org/',
    'https://awionline.org',
    'https://www.humanesociety.org/',
    'https://www.peta.org',
    'https://bestfriends.org',
  };
  Set<String> names = {
    'Animal Rescue & Rehab Trust ',
    'Honorary Animals Welfare Officer',
    'MYSORE PINJARAPOLE SOCIETY',
    'Animal Welfare Institute (AWI)',
    'Humane Society of the United States (HSUS)',
    'People for the Ethical Treatment of Animals (PETA) ',
    'Best Friends Animal Society',
  };
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(),
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
                      'Assets/Images/pet2.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  // back button
                  Container(
                    // padding: EdgeInsets.only(top: 15, left: 15),
                    // alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                  // Text at the bottom
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.only(top: 400),
                    //width: 200,
                    child: const Center(
                      child: Text(
                        'plant Service Providers',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Other widgets below the image

              for (int i = 0; i < names.length; i++)
                Card(
                  elevation: 7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              names.elementAt(i),
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
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
