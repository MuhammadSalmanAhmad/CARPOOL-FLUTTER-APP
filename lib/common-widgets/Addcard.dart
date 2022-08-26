import 'package:flutter/material.dart';

class Addcard extends StatelessWidget {
  final String headtext;
  final String subtext;
  final String message;
  final String buttontext;
  VoidCallback onadd;
  Addcard({Key? key, required this.headtext,required this.subtext,required this.message,required this.buttontext,required this.onadd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Text(
              headtext,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          color: Colors.black,
          child:  ListTile(
            title: Text(
              subtext,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              message,
              style: TextStyle(color: Colors.white54),
            ),
            isThreeLine: true,
          ),
        ),
        TextButton(
            style: TextButton.styleFrom(primary: Colors.green),
            onPressed: onadd,
            child: Text(buttontext))
      ],
    );
  }
}
