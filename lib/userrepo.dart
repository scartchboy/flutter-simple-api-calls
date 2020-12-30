
import 'package:weather/usermodel.dart';
import 'package:http/http.dart' as http;

class Serivces{

  // ignore: missing_return
  static Future<List<User>> getdata() async {
  String url = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<User> users = userFromJson(response.body);
      return users;
      
    }
  }
}
