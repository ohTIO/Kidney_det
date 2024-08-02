import 'package:final_1/pages/imageAnalysis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Scanme extends StatefulWidget {
  const Scanme({super.key});

  @override
  State<Scanme> createState() => _ScanmeState();
}

class _ScanmeState extends State<Scanme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScanSessionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScanSessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: Colors.blueAccent,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: Image.asset(
                  'assets/scan.png',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action for 'Take Photo' button
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, //Text color
                backgroundColor: Colors.blue, //background color
              ),
              child: Text('Take Photo'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Imageanalysis(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // Text color
              ),
              child: Text('Upload Photo'),
            ),
          ],
        ),
      ),
    );
  }
}
