import 'package:flutter/material.dart';
import 'package:portfolio_app/main.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage(
                  'gargi.jpeg',
                ),
              ),
              const Text(
                "Gargi Goel",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Abril_Fatface",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'CSE Undergrad',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Noto_Sans",
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'gargigoel858@gmail.com',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "projects");
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.file_copy),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Projects',
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri url =
                      Uri.parse("https://www.linkedin.com/in/gargi-goel9/");
                  _launchUrl(url);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.connect_without_contact),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Connect with me!',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
