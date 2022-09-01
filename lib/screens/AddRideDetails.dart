import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:carpool/theme.dart';

class AddRideDetails extends StatefulWidget {
  const AddRideDetails({Key? key}) : super(key: key);

  @override
  State<AddRideDetails> createState() => _AddRideDetailsState();
}

class _AddRideDetailsState extends State<AddRideDetails> {
  final formkey = GlobalKey<FormState>();
  //CARS LIST
  List<String> carslist = <String>[
    'City',
    'Civic',
    'sonata',
    'Mercedes S class'
  ];
  String firstItem = "mehru";
  DateTime _selecteddate = DateTime.now();
  //CONTROLERS F=TO GET INPUT VALUES FROM THE FEILD
  TextEditingController numberofseatsTEC = TextEditingController();
  TextEditingController dateTEC = TextEditingController();
  TextEditingController pickuponeTEC = TextEditingController();
  TextEditingController pickuptwoTEC = TextEditingController();
  TextEditingController dropoffoneTEC = TextEditingController();
  TextEditingController dropofftwoTEC = TextEditingController();
//GENDER OPTIONS
  List<String> genders = ['Male', 'Female', 'Both'];
  String _defaultgender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
            key: formkey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ride Details",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),

                    // DROPDOWN BUTTON TO SELECT CAR
                    child: DropdownButtonFormField(
                        isExpanded: true,
                        style: const TextStyle(color: Colors.green),
                        icon: const Icon(Icons.arrow_drop_down_circle),
                        decoration: const InputDecoration(
                            labelText: "select a car",
                            labelStyle: TextStyle(
                              color: Colors.white38,
                              fontSize: 28,
                            ),
                            prefixIcon: Icon(
                              Icons.drive_eta,
                              color: Colors.white30,
                            ),
                            iconColor: Colors.white30,
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.greenAccent))),
                        value: carslist[0],
                        items: carslist
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ))
                            .toList(),
                        onChanged: ((String? val) {
                          setState(() {
                            firstItem = val!;
                          });
                        })),
                  ),

                  //FEILD WHERE USER SPECIFY HIS/HER SEATS AVAILABLE
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                    controller: numberofseatsTEC,
                    decoration: const InputDecoration(
                      hintText: "number of seats available",
                      prefixIcon: Icon(
                        Icons.airline_seat_recline_normal,
                        color: Colors.white38,
                      ),
                    ),
                    style: const TextStyle(color: Colors.green, fontSize: 20),
                  ),

//TEXTFORM FEILD WHICH ONTAP SHOWS CALENDER SO USER CAN SELECT DATE ON WHICH HE/SHE WANTS TO SHARE RIDE, ADDED DATE FORMATER
                  TextFormField(
                    controller: dateTEC,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                    onTap: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2050))
                          .then((value) {
                        setState(() {
                          _selecteddate = value!;
                        });
                      });
                      if (_selecteddate != null) {
                        setState(() {
                          dateTEC.text =
                              DateFormat('dd-MM-yyyy').format(_selecteddate);
                        });
                      }
                    },
                    decoration: const InputDecoration(
                      hintText: "Date",
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: Colors.white38,
                      ),
                    ),
                    style: const TextStyle(color: Colors.green, fontSize: 20),
                  ),

                  //DROPDOWN BUTTON FEILD TO SELECT GENDER
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: DropdownButtonFormField(
                        isExpanded: true,
                        style: const TextStyle(color: Colors.green),
                        icon: const Icon(
                          Icons.arrow_drop_down_circle,
                        ),
                        decoration: const InputDecoration(
                            labelText: "share ride with",
                            labelStyle: TextStyle(
                              color: Colors.white38,
                              fontSize: 28,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white30,
                            ),
                            iconColor: Colors.white30,
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.greenAccent))),
                        value: genders[0],
                        items: genders
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ))
                            .toList(),
                        onChanged: ((String? val) {
                          setState(() {
                            _defaultgender = val!;
                          });
                        })),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.radio_button_checked_rounded,
                        color: Colors.white38,
                      ),
                      Container(
                        child: const Text(
                          "To",
                          style: TextStyle(color: Colors.white38, fontSize: 20),
                        ),
                      )
                    ],
                  ),

                  //feilds to enter pickup locations
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                    controller: pickuponeTEC,
                    decoration: const InputDecoration(
                      hintText: "Pickup Location#1",
                    ),
                    style: const TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                    controller: pickuptwoTEC,
                    decoration: const InputDecoration(
                      hintText: "Pickup Location#2",
                    ),
                    style: const TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.radio_button_checked_rounded,
                        color: Colors.white38,
                      ),
                      Container(
                        child: const Text(
                          "From",
                          style: TextStyle(color: Colors.white38, fontSize: 20),
                        ),
                      )
                    ],
                  ),

                  //FEILDS TO ENTER DROP OFF LOCATION
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                    controller: dropoffoneTEC,
                    decoration: const InputDecoration(
                      hintText: "Dropoff Location#1",
                    ),
                    style: const TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                    controller: dropofftwoTEC,
                    decoration: const InputDecoration(
                      hintText: "Dropoff Location#2",
                    ),
                    style: const TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  //SUBMIT BUTTON
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 100),
                          primary: Colors.green,
                          shape: StadiumBorder()),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text(
                        "Share a Ride",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
