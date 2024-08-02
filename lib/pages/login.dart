import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(style: TextStyle(fontSize: 36.0), "Welcome"),
                    Image(image: AssetImage("assets/Vector 2.jpg"))
                  ],
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        // Email TextField
                        TextFormField(
                          textAlign: TextAlign.center,
                          // Give it some decoration
                          decoration: const InputDecoration(
                              // Give the TextField Outline
                              border: OutlineInputBorder(
                                  // Set the border radius
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                              // Reduce the height of the TextField
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 10.0),
                              // Label Text
                              label:
                                  Text(textAlign: TextAlign.center, "Email")),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        // Password TextField
                        TextFormField(
                          textAlign: TextAlign.center,
                          // Give it some decoration
                          decoration: const InputDecoration(
                              // Give the TextField Outline
                              border: OutlineInputBorder(
                                  // Set the border radius
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                              // Reduce the height of the TextField
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 10.0),
                              // Label Text
                              label: Text(
                                  textAlign: TextAlign.center, "Password")),
                        ),
                        // Provide some vertical space between the textfield and the login button
                        const SizedBox(
                          height: 20.0,
                        ),
                        // The Login Button
                        ElevatedButton(
                          // Give the button some stye
                          style: const ButtonStyle
                              // Set the background color
                              (
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xFF023ED8))),
                          // An action function
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: const Text(
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                              "Login"),
                        ),
                        // If a User does not have account and click on signup, it should redirect to signup page
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text("Don't have an account?"),
                            // Use a clickable text for the user to signup
                            TextButton(
                              onPressed: () {},
                              // Style the button
                              style: const ButtonStyle(
                                  // Give the button text a black color
                                  foregroundColor:
                                      WidgetStatePropertyAll(Colors.black),
                                  // Give it a bold font weight
                                  textStyle: WidgetStatePropertyAll(TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                              child: const Text(
                                  style: TextStyle(color: Color(0xFF8A2FFF)),
                                  "Sign Up"),
                            )
                          ],
                        ),
                        // A button to enable the user to reset password when forgotten
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                                style: TextStyle(color: Color(0xFF023ED8)),
                                "Forgot your password?"))
                      ],
                    ),
                  ),
                ),
                // The button Image
                const Image(image: AssetImage('assets/Vector 1.jpg'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
