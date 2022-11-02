import 'dart:convert';
import 'package:example_app/Constant/c_vars.dart';
import 'package:http/http.dart' as http;

class ServerService {
  static var client = http.Client();

  // Arish

  static Future<int> fakeApi() async {
    int count = 0;
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        count++;
      },
    );
    print(count);
    await Future.delayed(
      const Duration(seconds: 4),
      () {
        count++;
      },
    );
    print(count);
    return count;
  }

  static Future lookPincode() async {
    String postAddress = '';
    var uri = Uri.parse(BASE_URL + postAddress);
    try {
      var response = await client.post(
        uri,
        headers: {'Authorization': headerToken},
        body: {
          'pincode': '',
        },
      );
      var body = json.decode(response.body);
      return body;
    } catch (e) {
      print("Error : $e");
      return {};
    }
  }

  // Pankaj

  // Prasad
}
