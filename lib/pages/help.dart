import 'package:final_1/pages/manageApp.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HelpPage extends StatefulWidget {
  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            icon: Image.asset(
                'assets/Rectangle 9.png'), // Use the asset icon here
            onPressed: () {
              // Action for the icon button
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background Image at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/Vector 1.jpg', // Ensure you have this image in your assets
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Ask a Question',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue, // Text color
                  ),
                  child: Text('How To Manage'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
