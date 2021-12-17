import 'package:flutter/material.dart';
class Route_Chart extends StatefulWidget {
  const Route_Chart({Key? key}) : super(key: key);

  @override
  _Route_ChartState createState() => _Route_ChartState();
}

class _Route_ChartState extends State<Route_Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Transport Chart') ,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Text('Coming Soon'),
    );
  }
}
