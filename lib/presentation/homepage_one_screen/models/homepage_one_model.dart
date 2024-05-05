import 'package:equatable/equatable.dart';

import 'container1_item_model.dart';
import 'listsongtitle_item_model.dart';
import 'playlist_item_model.dart';

/// This class defines the variables used in the [homepage_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

class HomepageOneModel extends Equatable {
  HomepageOneModel(
      {this.playlistItemList = const [],
      this.container1ItemList = const [],
      this.listsongtitleItemList = const []});

  List<PlaylistItemModel> playlistItemList;

  List<Container1ItemModel> container1ItemList;

  List<ListsongtitleItemModel> listsongtitleItemList;

  HomepageOneModel copyWith({
    List<PlaylistItemModel>? playlistItemList,
    List<Container1ItemModel>? container1ItemList,
    List<ListsongtitleItemModel>? listsongtitleItemList,
  }) {
    return HomepageOneModel(
      playlistItemList: playlistItemList ?? this.playlistItemList,
      container1ItemList: container1ItemList ?? this.container1ItemList,
      listsongtitleItemList:
          listsongtitleItemList ?? this.listsongtitleItemList,
    );
  }

  @override
  List<Object?> get props =>
      [playlistItemList, container1ItemList, listsongtitleItemList];
}
