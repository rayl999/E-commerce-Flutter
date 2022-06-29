import 'package:http/http.dart' as http;
import '../models2/product.dart';

class ProductRemote {
  Future<Product?> getProduct() async {
    String? token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOiIxNjU2NDgzMDMxIiwiZXhwIjoiMTcyNDk5ODIzMSIsIkN1c3RvbWVySWQiOiIzOCIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiN2RjMWJjOTgtYzNkYS00MDc1LWI5OWQtMDU0NDhiMzI4YzY3In0.ZUI-0an5PpbQ2q0J2VC8HvRmeVCTuuOY2HJO8QHz7-I";

    http.Client clint = http.Client();
    Uri url = Uri.parse('https://localhost:5001/api/products');
    http.Response response =
        await clint.get(url, headers: {"Authorization": "Bearer $token"});
    if (response.statusCode == 200) {
      var json = response.body;
      return productFromJson(json);
    }
    var json = response.body;
    return productFromJson(json);
  }
}
