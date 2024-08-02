import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100.0,),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Row(
                    children: [
                      Text(
                         style: TextStyle(fontSize: 36.0),
                        "Create\nAccount"
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 100.0,),
               Form(child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: Column(
                  children: [
                    TextFormField(
                                    textAlign: TextAlign.center,
                                    // Give it some decoration
                                    decoration: const InputDecoration(
                                      // Give the TextField Outline
                                      border: OutlineInputBorder(
                                        // Set the border radius
                                        borderRadius: BorderRadius.all(Radius.circular(30.0))
                                      ),
                                      // Reduce the height of the TextField
                                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                                      // Label Text
                                      label: Text(textAlign: TextAlign.center, "Email")
                                    ),
                                  ),
                                  const SizedBox(height: 20.0,),
                                   // Password TextField
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    // Give it some decoration
                                    decoration: const InputDecoration(
                                      // Give the TextField Outline
                                      border: OutlineInputBorder(
                                        // Set the border radius
                                        borderRadius: BorderRadius.all(Radius.circular(30.0))
                                      ),
                                      // Reduce the height of the TextField
                                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                                      // Label Text
                                      label: Text(textAlign: TextAlign.center, "Password")
                                    ),
                                  ),
                                  // Provide some vertical space between the textfield and the login button
                                  const SizedBox(height: 20.0,),
                                  // The SignUp Button
                                   ElevatedButton(
                                    // Give the button some stye
                                    style:const ButtonStyle
                                    // Set the background color
                                    (backgroundColor:WidgetStatePropertyAll(Color(0xFF023ED8))),
                                    // An action function
                                    onPressed: (){},
                                     child: const Text(
                                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                                      "Sign Up"
                                      ),
                                      ),
                  ],
                 ),
               ),
               ),
               const Image(
                image: AssetImage('assets/Vector 1.jpg'),
                )
              ],
             
            ),
            
          )
        
        ,),
      ),
    );
  }
}