import 'package:http/http.dart' as http;

import '../models2/Category.dart';

class CategoryRemote {
  Future<Category?> getCat() async {
    var ahmadToken =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOiIxNjU2NTA3ODQ1IiwiZXhwIjoiMTcyNTAyMzA0NSIsIkN1c3RvbWVySWQiOiIxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiJkODEyZjhlZi00YWNmLTRlMTUtODQwNy0yN2EwN2UxYTUwMjkiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJhZG1pbkBhZG1pbi5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiYWRtaW5AYWRtaW4uY29tIn0.B_mWEBUNzk4_at00UR4NUb6GzIv9KrA1aebBPH0GJUs";
    http.Client clint = http.Client();
    Uri url = Uri.parse('https://localhost:5001/api/categories');
    http.Response response =
        await clint.get(url, headers: {"Authorization": "Bearer $ahmadToken"});

    var json = response.body;
    return categoryFromJson(json);
  }
}
