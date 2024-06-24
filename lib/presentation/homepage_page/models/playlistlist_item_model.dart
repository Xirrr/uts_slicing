import '../../../core/app_export.dart';

/// This class is used in the [playlistlist_item_widget] screen.
// ignore_for_file: must_be_immutable

class PlaylistlistItemModel {
  PlaylistlistItemModel(
      {this.playlistImage, this.playlistTitle, this.playlistArtists, this.id}) {
    playlistImage = playlistImage ?? ImageConstant.imgRectangle5;
    playlistTitle = playlistTitle ?? "Indonesian pops";
    playlistArtists =
        playlistArtists ?? "Nadine amizah, Ghea Indrawari, Yura Yunita";
    id = id ?? "";
  }

  String? playlistImage;

  String? playlistTitle;

  String? playlistArtists;

  String? id;
}
