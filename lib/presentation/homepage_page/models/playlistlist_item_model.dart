import '../../../core/app_export.dart';

/// This class is used in the [playlistlist_item_widget] screen.
// ignore_for_file: must_be_immutable

class PlaylistlistItemModel {
  late String playlistImage;
  late String playlistTitle;
  late String playlistArtists;
  late String id;

  PlaylistlistItemModel({
    String? playlistImage,
    String? playlistTitle,
    String? playlistArtists,
    String? id,
  }) {
    this.playlistImage = playlistImage ?? ImageConstant.imgRectangle5;
    this.playlistTitle = playlistTitle ?? "Indonesian pops";
    this.playlistArtists =
        playlistArtists ?? "Nadine amizah, Ghea Indrawari, Yura Yunita";
    this.id = id ?? "";
  }

  // Factory constructor to create PlaylistlistItemModel from a map
  factory PlaylistlistItemModel.fromJson(Map<String, dynamic> json) {
    return PlaylistlistItemModel(
      playlistImage: json['playlistImage'] ?? ImageConstant.imgRectangle5,
      playlistTitle: json['playlistTitle'] ?? "Indonesian pops",
      playlistArtists: json['playlistArtists'] ??
          "Nadine amizah, Ghea Indrawari, Yura Yunita",
      id: json['id'] ?? "",
    );
  }

  // Method to convert PlaylistlistItemModel to a map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['playlistImage'] = this.playlistImage;
    data['playlistTitle'] = this.playlistTitle;
    data['playlistArtists'] = this.playlistArtists;
    data['id'] = this.id;
    return data;
  }

  @override
  String toString() {
    return 'PlaylistlistItemModel{playlistImage: $playlistImage, playlistTitle: $playlistTitle, playlistArtists: $playlistArtists, id: $id}';
  }
}
