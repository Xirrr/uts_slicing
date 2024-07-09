import 'package:flutter/material.dart';
import 'services/api_service.dart';
import 'services/music_model.dart';

final GlobalKey<ScaffoldMessengerState> globalMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Details App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      scaffoldMessengerKey: globalMessengerKey,
      home: MusicDetailPage(),
    );
  }
}

class MusicDetailPage extends StatefulWidget {
  @override
  _MusicDetailPageState createState() => _MusicDetailPageState();
}

class _MusicDetailPageState extends State<MusicDetailPage> {
  late ApiService apiService;
  MusicDetail? musicDetail;
  bool isLoading = false;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    apiService = ApiService(
        baseUrl: 'https://api.example.com'); // Ganti dengan URL dasar Anda
    fetchMusicDetail('1'); // ID musik sebagai contoh
  }

  Future<void> fetchMusicDetail(String id) async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      MusicDetail? detail = await apiService.fetchMusicDetail(id);
      setState(() {
        musicDetail = detail;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
      if (globalMessengerKey.currentState != null) {
        globalMessengerKey.currentState!.showSnackBar(
            SnackBar(content: Text('Gagal memuat detail musik: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Musik'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : musicDetail != null
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Judul: ${musicDetail!.title}',
                          style: TextStyle(fontSize: 20)),
                      Text('Artis: ${musicDetail!.artist}',
                          style: TextStyle(fontSize: 20)),
                      Text('Album: ${musicDetail!.album}',
                          style: TextStyle(fontSize: 20)),
                      Text('Genre: ${musicDetail!.genre}',
                          style: TextStyle(fontSize: 20)),
                      Text('Tahun: ${musicDetail!.year}',
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                )
              : Center(child: Text('Gagal memuat detail musik: $errorMessage')),
    );
  }
}
