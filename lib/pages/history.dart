import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'History',
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          elevation: 0,
        ),
        body: Stack(
          children: [
            // Other widgets in the stack
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/Vector 1.jpg', // Ensure the path is correct
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Center the column vertically
                children: [
                  Text(
                    'Patient 1',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Patient 2',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Patient 3',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
