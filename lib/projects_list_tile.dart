// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage2 extends StatelessWidget {
  const ProjectsPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[100],
            title: const Text('My Projects',
                style: TextStyle(
                  color: Colors.black,
                )),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black)),
          ),
          body: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  final Uri url =
                      Uri.parse("https://github.com/goelgargi/portfolio_app");
                  _launchUrl(url);
                },
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("flutter.webp"),
                    ),
                    title: Text(
                      'Project 1: Portfolio App',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Text(
                        'I built a portfolio app using Flutter. It includes my email id, LinkedIn acccount and projects with their links.'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri url = Uri.parse(
                      "https://www.facebook.com/fbcameraeffects/testit/415527803838632/YmUwYzEzNTQ4M2I0YjQ5MjFjNzQxZTFiNWE0ZjhjNWU=/");
                  _launchUrl(url);
                },
                child: Card(
                  child: ListTile(
                    leading:
                        CircleAvatar(backgroundImage: AssetImage("spark.png")),
                    title: Text(
                      'Project 2: Friendly Fued Filter',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Text(
                        'I built a faceswap filter for friendship day. The interactive filter has a faceswap feature and a quiz one can enjoy with their bestfriend.'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri url =
                      Uri.parse("https://github.com/goelgargi/innerve-hacks");
                  _launchUrl(url);
                },
                child: Card(
                  child: ListTile(
                    leading:
                        CircleAvatar(backgroundImage: AssetImage("mother.jpg")),
                    title: Text(
                      'Project 3: Maternal Health Website',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Text(
                        'I developed a website for all resources related to maternal health under one roof.'),
                  ),
                ),
              ),
              const Text(
                "  Click on the project names to view the github repository.",
                style: TextStyle(
                  color: Color.fromARGB(255, 112, 111, 111),
                  fontFamily: "Noto_Sans",
                ),
              ),
            ],
          )),
    );
  }
}

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}
