import 'dart:ui';
import 'screens/select-location.dart';
import 'screens/SignUPscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/SignInScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MyWidget(),
      theme: theme(),
    ),
  );
}
//THE MAIN SCREEN AFTER  SPLASH SCREEN

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 200,
            height: 200,
            child: Image(image: AssetImage("assets/car.png")),
          ),
          const SizedBox(
            height: 150,
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign to enjoy the experience of sharing and searching a reasonable ride",
                style: TextStyle(color: Colors.white70),
                textAlign: TextAlign.center,
              )
            ],
          )),
          const SizedBox(
            height: 160,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, shape: const StadiumBorder()),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              child: const Text(
                "CONTINUE",
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(color: Colors.white70),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.green),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
