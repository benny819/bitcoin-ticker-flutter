import 'package:http/http.dart' as http;
import 'dart:convert';
import 'api_key.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final url;

  Future getData() async {
    http.Response response =
        await http.get(url, headers: {'X-CoinAPI-Key': coinAPI});
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
