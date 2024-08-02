import 'package:flutter/material.dart';

class Imageanalysis extends StatefulWidget {
  const Imageanalysis({super.key});

  @override
  State<Imageanalysis> createState() => _ImageanalysisState();
}

class _ImageanalysisState extends State<Imageanalysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Analysis'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/Rectangle 9.png'),
            onPressed: () {
              // Action for the icon button
            },
          ),
        ],
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
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: Center(
                    child: Text(
                      'Image will be displayed here',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Details',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
