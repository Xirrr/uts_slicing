import '../../../core/app_export.dart';

/// This class is used in the [listsongtitle_item_widget] screen.
// ignore_for_file: must_be_immutable

class ListsongtitleItemModel {
  ListsongtitleItemModel(
      {this.songImage, this.songTitle, this.artistName, this.id}) {
    songImage = songImage ?? ImageConstant.imgRectangle5100x152;
    songTitle = songTitle ?? "Hidupku indah";
    artistName = artistName ?? "James adam";
    id = id ?? "";
  }

  String? songImage;

  String? songTitle;

  String? artistName;

  String? id;
}
