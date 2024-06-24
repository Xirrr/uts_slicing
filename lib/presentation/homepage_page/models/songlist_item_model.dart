import '../../../core/app_export.dart';

/// This class is used in the [songlist_item_widget] screen.
// ignore_for_file: must_be_immutable

class SonglistItemModel {
  late String songImage;
  late String songTitle;
  late String artistName;
  late String id;

  SonglistItemModel({
    String? songImage,
    String? songTitle,
    String? artistName,
    String? id,
  }) {
    this.songImage = songImage ?? ImageConstant.imgRectangle5100x152;
    this.songTitle = songTitle ?? "Hidupku indah";
    this.artistName = artistName ?? "James adam";
    this.id = id ?? "";
  }

  // Factory constructor to create SonglistItemModel from a map
  factory SonglistItemModel.fromJson(Map<String, dynamic> json) {
    return SonglistItemModel(
      songImage: json['songImage'] ?? ImageConstant.imgRectangle5100x152,
      songTitle: json['songTitle'] ?? "Hidupku indah",
      artistName: json['artistName'] ?? "James adam",
      id: json['id'] ?? "",
    );
  }

  // Method to convert SonglistItemModel to a map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['songImage'] = this.songImage;
    data['songTitle'] = this.songTitle;
    data['artistName'] = this.artistName;
    data['id'] = this.id;
    return data;
  }

  @override
  String toString() {
    return 'SonglistItemModel{songImage: $songImage, songTitle: $songTitle, artistName: $artistName, id: $id}';
  }
}
