import '../presentation/homepage_page/models/songlist_item_model.dart';

class ApiService {
  // Contoh URL endpoint API
  static const String apiUrl = 'https://api.example.com/songs';

  Future<List<SonglistItemModel>> fetchSongs() async {
    // Implementasi logika untuk mengambil data dari API sesuai dengan struktur yang sesuai
    // Contoh sederhana menggunakan data statis

    // Simulasi data dari API
    List<Map<String, dynamic>> apiData = [
      {
        'songImage': 'https://example.com/image1.jpg',
        'songTitle': 'Hidupku indah',
        'artistName': 'James adam',
      },
      {
        'songImage': 'https://example.com/image2.jpg',
        'songTitle': 'Begitu adanya',
        'artistName': 'Nugroho alis',
      },
      {
        'songImage': 'https://example.com/image3.jpg',
        'songTitle': 'Ya begitulah',
        'artistName': 'Maria Srinirani',
      },
    ];

    // Mapping data dari JSON ke model SonglistItemModel
    List<SonglistItemModel> songs =
        apiData.map((json) => SonglistItemModel.fromJson(json)).toList();

    return songs;
  }
}
