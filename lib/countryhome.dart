import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather/countrymodel.dart';
import 'package:http/http.dart' as http;

class CountryHome extends StatefulWidget {
  CountryHome({Key key}) : super(key: key);

  @override
  _CountryHomeState createState() => _CountryHomeState();
}

class _CountryHomeState extends State<CountryHome> {
  List<Countrymodel> _list = new List<Countrymodel>();

  Future<List<Countrymodel>> fetchdata() async {
    var list = new List<Countrymodel>();
    var response = await http.get("https://restcountries.eu/rest/v2/all");

    if (response.statusCode == 200) {
      var responsebody = json.decode(response.body);
      for (var countryjson in responsebody) {
        list.add(Countrymodel.fromJson(countryjson));
      }
    }
    return list;
  }

  @override
  void initState() {
    

    fetchdata().then((value) => _list.addAll(value));
    print(_list.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cuntry"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              elevation: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _list[index].countryname,
                    style: TextStyle(fontSize: 30.0),
                    
                  ),
                Text(
                    _list[index].region,
                    style: TextStyle(fontSize: 30.0),
                    
                  ),
                ],
              ));
        },
      ),
    );
  }
}
