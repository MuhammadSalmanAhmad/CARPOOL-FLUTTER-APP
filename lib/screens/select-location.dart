import 'package:flutter/material.dart';
import 'package:carpool/common-widgets/drawer.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const sidepanel(),
    );
  }
}
