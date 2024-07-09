class MusicDetail {
  final String title;
  final String artist;
  final String album;
  final String genre;
  final int year;

  MusicDetail({
    required this.title,
    required this.artist,
    required this.album,
    required this.genre,
    required this.year,
  });

  factory MusicDetail.fromJson(Map<String, dynamic> json) {
    return MusicDetail(
      title: json['title'],
      artist: json['artist'],
      album: json['album'],
      genre: json['genre'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'artist': artist,
      'album': album,
      'genre': genre,
      'year': year,
    };
  }
}
