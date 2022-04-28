import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/transport_route.dart';
import 'package:login/user_profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _selectoptions(
      {required Color color, required String title, required String subtitle}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(left: 30),
      height: 120,
      width: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget _Department({required String imagee, required String namee}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.orangeAccent, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagee)),
            ),
          ),
          SizedBox(
              height: 10,
              child: Text(
                namee,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }

  Widget _selectfrequency(
      {required Color color,
      required String title,
      required TextStyle textStyle}) {
    return Container(
      height: 45,
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Profile()));
          },
        ),
        title: Center(
            child: Text(
          'Home Screen',
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          //first part ....
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  "Welcome to AJU",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 30, top: 30),
                  child: Row(
                    children: [
                      _selectoptions(
                          color: Colors.orangeAccent,
                          subtitle: 'Transport ID / Student ID ',
                          title: "ID"),
                      _selectoptions(
                        color: Colors.orangeAccent,
                        title: 'Time Table',
                        subtitle: 'All Department',
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Route_Chart()));
                        },
                        child: _selectoptions(
                            color: Colors.orangeAccent,
                            subtitle: 'Transport Route',
                            title: "Transport"),
                      ),
                    ],
                  ),
                ),
              ),
              //First part end.......
              //Starting of departments
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Department',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Container(
                        // color: Colors.red,
                        height: 400,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1.30,
                          children: [
                            _Department(
                                imagee: 'Dimages/Electrical.png',
                                namee: 'Electrical Engineering'),
                            _Department(
                                imagee: 'Dimages/Mechanical.jpg',
                                namee: 'Mechanical Engineering'),
                            _Department(
                                imagee: 'Dimages/computer1.jpg',
                                namee: 'Computer Science Engineering'),
                            _Department(
                                imagee: 'Dimages/civil1.jpg',
                                namee: 'Civil Engineering'),
                            _Department(
                                imagee: 'Dimages/BBA.jpg', namee: 'BBA'),
                            _Department(
                                imagee: 'Dimages/BCA.jpg', namee: 'BCA'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // End of Departments
              Container(
                padding: EdgeInsets.only(left: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        'Selected Frequency',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _selectfrequency(
                            title: 'Weekly',
                            color: Colors.orangeAccent,
                            textStyle: TextStyle(color: Colors.black),
                          ),
                          _selectfrequency(
                            title: 'Daily',
                            color: Colors.orangeAccent,
                            textStyle: TextStyle(color: Colors.black),
                          ),
                          _selectfrequency(
                            title: 'Monthly',
                            color: Colors.orangeAccent,
                            textStyle: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
