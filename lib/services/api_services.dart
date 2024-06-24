import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl =
      'https://api.example.com'; // Ganti dengan URL API sesuai kebutuhan

  // Metode untuk melakukan HTTP GET request
  Future<dynamic> fetchData(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      // Jika respons sukses (status code 200), return data dalam bentuk JSON
      return jsonDecode(response.body);
    } else {
      // Jika gagal, lempar exception dengan pesan error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }

  // Metode untuk melakukan HTTP POST request (contoh, tambahkan sesuai kebutuhan)
  Future<dynamic> postData(String endpoint, Map<String, dynamic> body) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode == 201) {
      // Jika respons sukses (status code 201), return data dalam bentuk JSON
      return jsonDecode(response.body);
    } else {
      // Jika gagal, lempar exception dengan pesan error
      throw Exception('Failed to post data: ${response.statusCode}');
    }
  }
}
