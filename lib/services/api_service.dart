import 'dart:convert';
import 'package:http/http.dart' as http;
import 'music_model.dart';

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<MusicDetail?> fetchMusicDetail(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/music/$id'));

    if (response.statusCode == 200) {
      return MusicDetail.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal memuat detail musik');
    }
  }
}
