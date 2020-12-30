

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int temp = 0;

  String place = "tirupati";

  void getcountry() async {
    var country = await http.get("https://restcountries.eu/rest/v2/all");
    print("hello");
    print(country.body.length);

  }

  @override
  Widget build(BuildContext context) {
    getcountry();
    return Scaffold(
      appBar: AppBar(
        title: Text("weather"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  temp.toString(),
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  place,
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                
                TextField(
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                  decoration: InputDecoration(
                      hintText: "enter place", prefixIcon: Icon(Icons.search)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
