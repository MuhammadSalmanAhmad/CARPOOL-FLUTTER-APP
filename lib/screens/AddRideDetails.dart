import 'package:flutter/material.dart';

class AddRideDetails extends StatefulWidget {
  const AddRideDetails({Key? key}) : super(key: key);

  @override
  State<AddRideDetails> createState() => _AddRideDetailsState();
}

class _AddRideDetailsState extends State<AddRideDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ride Details"),
      ),
    );
  }
}
