import 'package:http/http.dart' as http;

import '../models2/Category.dart';

class CategoryRemote {
  Future<Category?> getCat() async {
    http.Client clint = http.Client();
    Uri url = Uri.parse('https://localhost:61382/api/categories?limit=5');
    http.Response response = await clint.get(url, headers: {
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOiIxNjU2NDk4MzUzIiwiZXhwIjoiMTY4ODAzNDM1MyIsIkN1c3RvbWVySWQiOiIzNiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiOWE3ZjkwMzMtNjM1ZS00OGI4LWFkYTEtYTU3MzA5MDlhYmI1In0.m1fSzNyqkU0a6VwXD4T637E0FR54NgniseebGRk53P8"
    });
    if (response.statusCode == 200) {
      var json = response.body;
      return categoryFromJson(json);
    }
    return null;
  }
}
