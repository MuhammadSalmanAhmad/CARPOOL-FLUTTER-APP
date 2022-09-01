import 'icons.dart';
import 'package:flutter/material.dart';
import 'common-widgets/Addcard.dart';
import 'screens/AddCardetails.dart';
import 'screens/AddRideDetails.dart';

class RideShareScreen extends StatefulWidget {
  const RideShareScreen({Key? key}) : super(key: key);

  @override
  State<RideShareScreen> createState() => _RideShareScreenState();
}

class _RideShareScreenState extends State<RideShareScreen> {
  int Itemselected = 0;
  void OnItemTaped(int index) {
    setState(() {
      Itemselected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = <Widget>[
      Addcard(
        headtext: "Ride",
        subtext: "Add a ride",
        message:
            "share a ride with others, and , make your ride visible to others",
        buttontext: "Add a ride",
        onadd: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddRideDetails()));
        },
      ),
      Addcard(
        headtext: "Car",
        subtext: "Add a car",
        message: "to share a ride you need to add a car first",
        buttontext: "Add a car",
        onadd: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddCarDetails()));
        },
      ),
      Addcard(
        headtext: "History",
        subtext: "No rides found",
        message: "share a ride with others",
        buttontext: "share a ride",
        onadd: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddRideDetails()));
        },
      )
    ];
    return Scaffold(
      appBar: AppBar(),
      body: screens.elementAt(Itemselected),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.steering_wheel, color: Colors.white38),
              label: "rides"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.drive_eta,
                color: Colors.white38,
              ),
              label: "cars"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.white38,
              ),
              label: "previous rides"),
        ],
        backgroundColor: Color.fromARGB(19, 255, 255, 255),
        currentIndex: Itemselected,
        onTap: OnItemTaped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.greenAccent,
        iconSize: 30.0,
      ),
    );
  }
}
