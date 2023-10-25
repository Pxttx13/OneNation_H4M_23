import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScholarshipPage extends StatelessWidget {
  ScholarshipPage({super.key});

  Set<String> links = {
    'https://ssp.postmatric.karnataka.gov.in/',
    'https://scholarships.gov.in/',
    'http://gmsp.org',
  };
  Set<String> names = {
    'state scholarship portal',
    'National scholarship portal',
    'The Gates Millennium Scholars Program',
  };

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                      'Assets/Images/scholar.jpg',
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
                        'Scholarship Service Providers',
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
                    child: SizedBox(
                      height: 50,
                      width: width * 0.8,
                      child: width > 800
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisSize: MainAxisSize.max,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names.elementAt(i),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
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
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisSize: MainAxisSize.max,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names.elementAt(i),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
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

  //

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
