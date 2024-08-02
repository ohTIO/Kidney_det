import 'package:final_1/pages/buttons.dart';
import 'package:final_1/pages/help.dart';
import 'package:final_1/pages/scanme.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                      height: 50,
                      width: 74,
                      image: AssetImage('assets/Rectangle 1.jpg')),
                  Text(
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w900),
                      "Kidney Scan"),
                  CircleAvatar(
                    child: Text(style: TextStyle(fontSize: 12.0), "Profile"),
                  )
                ],
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                const Image(image: AssetImage("assets/Vector 2.jpg")),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Buttons(
                              buttonText: "History",
                              onPressed: () {
                                Navigator.pushNamed(context, '/history');
                              }),
                          ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                      Color(0xFF023ED8))),
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                      'Settings'),
                                  Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  )
                                ],
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Buttons(
                              buttonText: "Scan Image",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Scanme()));
                              }),
                          Buttons(
                              buttonText: "Help",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Help()));
                              }),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
