import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models2/token.dart';

class LoginRemote {
  //https://localhost:5001/token
   Future<Token> getAccess(String? outerEmail, String? outerPassword) async {
    var clint = http.Client();
    Uri url = Uri.parse('https://localhost:5001/token');
    if(outerEmail!.isEmpty) print("object");
    var response = await clint.post(url,
        headers: {"Content-Type": "application/json-patch+json"},

        body: jsonEncode(<String, String>{
          "guest": "false",
          "username": outerEmail??"",
          "password": outerPassword??"",
          "remember_me": "true"
        }));
    print(response.statusCode.toString());
    String json = response.body;
    print(json);
    return tokenFromJson(json);
  }
}
