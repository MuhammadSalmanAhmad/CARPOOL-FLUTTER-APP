import 'package:flutter/material.dart';
import 'SignInScreen.dart';
//SCREEN FOR REGISTRATION OF USER AND GETTING IMPORTANT CREDENTIALS

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //textcontrollers for different feilds in  our screen,help us retreiving input value/text from field
  TextEditingController usernameTEC = TextEditingController();
  TextEditingController emailTEC = TextEditingController();
  TextEditingController phoneTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();

//key for form

  final signupformkey = GlobalKey<FormState>();

  //function for validation of data and signing up
  void Validationfunction() {
    if (signupformkey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      var username = usernameTEC.value;
      var email = emailTEC.value;
      var phone = phoneTEC.value;
      var password = passwordTEC.value;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
        key: signupformkey,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: Image(image: AssetImage("assets/car.png"))),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "SignUp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //TEXTFEILD FOR GETTING USERNAME OF USER
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(color: Colors.white38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white70)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        )),
                    controller: usernameTEC,
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

                  //FORMFEILD FOR ENTERING EMAIL
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white70)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        )),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailTEC,
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
                  //FORMFEILD FOR GETTING PHONE NO
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Phone",
                        hintStyle: TextStyle(color: Colors.white38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white70)),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.grey,
                        )),
                    keyboardType: TextInputType.phone,
                    controller: phoneTEC,
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
                  //FORMFEILD FOR GETTING PASSWORD
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white70)),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.grey,
                        )),
                    obscureText: true,
                    controller: phoneTEC,
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

                  //submit button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 59, 143, 61),
                          shape: const StadiumBorder()),

                      //call of validation function

                      onPressed: Validationfunction,
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white54),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignInScreen()));
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
