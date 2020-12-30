import 'package:flutter/material.dart';
import 'usermodel.dart';
import 'package:weather/userrepo.dart';

class Usersapi extends StatefulWidget {
  Usersapi({Key key}) : super(key: key);

  @override
  _UsersapiState createState() => _UsersapiState();
}

class _UsersapiState extends State<Usersapi> {
  List<User> _users;


  @override
  void initState() {
   
    Serivces.getdata().then((value) {
      setState(() {
        _users = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("users"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            
            elevation: 2.0,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_users[index].name,style: TextStyle(fontSize: 20.0),),
                Text(_users[index].email,style: TextStyle(fontSize: 15.0),),
                Text(_users[index].address.city),
                Text(_users[index].address.geo.lat),
                Text(_users[index].address.geo.lng),
                Text(_users[index].company.bs),
                    Text(_users[index].company.catchPhrase)
              ],
            ),
                        ),
          );
        },
      ),
    );
  }
}
