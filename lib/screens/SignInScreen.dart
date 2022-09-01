import 'package:flutter/material.dart';
import 'select-location.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController signinemailTEC = TextEditingController();
  TextEditingController signinpasswordTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Image(
                image: AssetImage("assets/car.png"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "SignIn ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //TEXTFEILD FOR GETTING EMAIL OR PHONE FROM THE USER
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email or Phone ",
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white24, width: 2)),
                      hintStyle: TextStyle(color: Colors.white38),
                    ),
                    keyboardType: TextInputType.text,
                    controller: signinemailTEC,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //FORM FEILD TO GET PASSWORD FROM THE USER
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Password ",
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white24, width: 2)),
                      hintStyle: TextStyle(color: Colors.white38),
                    ),
                    keyboardType: TextInputType.text,
                    controller: signinpasswordTEC,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            "Forget Password?",
                            style:
                                TextStyle(color: Colors.white38, fontSize: 15),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100),
                            primary: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LocationScreen()));
                        },
                        child: const Text("SIGN IN")),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
