import 'package:flutter/material.dart';

class AddCarDetails extends StatefulWidget {
  const AddCarDetails({Key? key}) : super(key: key);

  @override
  State<AddCarDetails> createState() => _AddCarDetailsState();
}

class _AddCarDetailsState extends State<AddCarDetails> {
  bool isvalidate = false;
  TextEditingController carmodelTec = TextEditingController();
  TextEditingController registeredyearTEC = TextEditingController();
  TextEditingController registerationTEC = TextEditingController();
  TextEditingController numberplateTEC = TextEditingController();
  TextEditingController colorTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:  SingleChildScrollView(child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Add a Car",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent)),
                      errorText:
                          isvalidate ? "This feild can't be empty" : null,
                      hintText: "Car model",
                      hintStyle: TextStyle(color: Colors.white38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24, width: 2),
                      )),
                  controller: carmodelTec,
                ),
                SizedBox(height:20),
                TextField(
                  style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent)),
                      errorText:
                          isvalidate ? "This feild can't be empty" : null,
                      hintText: "Registered Year",
                      hintStyle: TextStyle(color: Colors.white38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24, width: 2),
                      )),
                  controller: registeredyearTEC,
                ),
                SizedBox(height: 20,),
                TextField(
                  style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent)),
                      errorText:
                          isvalidate ? "This feild can't be empty" : null,
                      hintText: "Registeration Number",
                      hintStyle: TextStyle(color: Colors.white38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24, width: 2),
                      )),
                  controller: registerationTEC,
                ),
                SizedBox(height: 20,),
                TextField(
                  style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent)),
                      errorText:
                          isvalidate==true ? "This feild can't be empty" : null,
                      hintText: "Number Plate",
                      hintStyle: TextStyle(color: Colors.white38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24, width: 2),
                      )),
                  controller: numberplateTEC,
                ),
                SizedBox(height: 20,),
                TextField(
                  style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.greenAccent)),
                      errorText:
                          isvalidate ? "This feild can't be empty" : null,
                      hintText: "color",
                      hintStyle: TextStyle(color: Colors.white38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24, width: 2),
                      )),
                  controller: colorTEC,
                ),
                SizedBox(
                  height: 150,
                ),
                ElevatedButton(
                
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 100),
                        primary: Colors.green,
                        shape: StadiumBorder()),
                    onPressed: () {
                      if (carmodelTec.text == null ||
                          registerationTEC.text == null ||
                          registeredyearTEC.text == null ||
                          numberplateTEC == null ||
                          colorTEC.text == null) {
                        isvalidate = true;
                      }
                    },
                    child: Text(
                      "Add a car",
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),) ,
      backgroundColor: Colors.black,
    );
  }
}
