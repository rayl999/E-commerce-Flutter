import 'package:http/http.dart' as http;

import '../models2/Category.dart';

class CategoryRemote {
  Future<Category?> getCat() async {
    http.Client clint = http.Client();
    Uri url = Uri.parse('https://localhost:5001/api/categories');
    http.Response response = await clint.get(url, headers: {
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOiIxNjU2MzI2NDQ3IiwiZXhwIjoiMTY1NzYyMjQ0NyIsIkN1c3RvbWVySWQiOiIzNSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiMjM2OGJlY2MtNjNmOS00ZWQzLTk5NmYtNTA1OWFjYjQwOTQ3In0.xXgXY8oJuaG-8Ard-XFogPbhkI8Tq5xne8astAjCXfw"
    });
    //print(response.statusCode);
    if (response.statusCode == 200) {
      var json = response.body;
      return categoryFromJson(json);
    }
  }
}
