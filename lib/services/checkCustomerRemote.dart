import 'package:http/http.dart' as http;

import '../models2/customer.dart';
import '../models2/token.dart';

class CheckCustomerRemote {
  Future<List<CustomerElement>?> checkUser() async {
    var clint = http.Client();
    var ahmadToken =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOiIxNjU2NTE5NzMyIiwiZXhwIjoiMTcyNTAzNDkzMiIsIkN1c3RvbWVySWQiOiIxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiJkODEyZjhlZi00YWNmLTRlMTUtODQwNy0yN2EwN2UxYTUwMjkiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJhZG1pbkBhZG1pbi5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiYWRtaW5AYWRtaW4uY29tIn0.fpOFHW3naEMWNtO-biQd9bipjUg27TxjAFM6f7xeAEI";

    Uri url = Uri.parse('https://localhost:5001/api/customers');

    http.Response response =
        await clint.get(url, headers: {"Authorization": "Bearer $ahmadToken"});
    String json = response.body;
    //print(json);
    return customerFromJson(json).customers;
  }
}
