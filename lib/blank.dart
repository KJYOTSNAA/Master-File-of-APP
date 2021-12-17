
import 'package:flutter/material.dart';
import 'package:login/erp_portal.dart';

class Blank extends StatelessWidget {
  const Blank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: Container(
          height: 90,
          width: 400,
          color: Colors.lightBlue,
          margin: EdgeInsets.all(5.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ERP()));
            },
            child: (Text('Demo clickable container')),
            style: TextButton.styleFrom(
              textStyle: TextStyle(
                fontSize: 30,
              ),
              primary: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
