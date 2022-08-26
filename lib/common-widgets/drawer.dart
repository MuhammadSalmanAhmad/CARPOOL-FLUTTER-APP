import 'package:flutter/material.dart';
import 'package:carpool/rider.dart';

class sidepanel extends StatefulWidget {
  const sidepanel({Key? key}) : super(key: key);

  @override
  State<sidepanel> createState() => _sidepanelState();
}

class _sidepanelState extends State<sidepanel> {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
      children: [
        Container(child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
 CircleAvatar(
          child: ClipOval(child: Image(image: AssetImage("assets/me.jpg"),)),
        maxRadius: 50,),
        SizedBox(height: 10,),
        Text("Salman Ahmad",style: TextStyle(color: Colors.white54),)
          ],
        ),
        color: Colors.brown,
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
        ),
       
        const SizedBox(height: 30,),
        ListTile(leading: const Icon(Icons.home,color: Colors.black,),
        title: const Text("share a ride",),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const RideShareScreen()));
        },),
      ],
    ),);
  }
}
