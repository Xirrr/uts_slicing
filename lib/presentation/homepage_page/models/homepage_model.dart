import 'package:equatable/equatable.dart';
import 'container_item_model.dart';
import 'playlistlist_item_model.dart';
import 'songlist_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

class HomepageModel extends Equatable {
  HomepageModel({
    this.playlistlistItemList = const [],
    this.containerItemList = const [],
    this.songlistItemList = const [],
  });

  List<PlaylistlistItemModel> playlistlistItemList;
  List<ContainerItemModel> containerItemList;
  List<SonglistItemModel> songlistItemList;

  HomepageModel copyWith({
    List<PlaylistlistItemModel>? playlistlistItemList,
    List<ContainerItemModel>? containerItemList,
    List<SonglistItemModel>? songlistItemList,
  }) {
    return HomepageModel(
      playlistlistItemList: playlistlistItemList ?? this.playlistlistItemList,
      containerItemList: containerItemList ?? this.containerItemList,
      songlistItemList: songlistItemList ?? this.songlistItemList,
    );
  }

  factory HomepageModel.fromJson(Map<String, dynamic> json) {
    // Parse playlistlistItemList
    List<PlaylistlistItemModel> playlistlist = [];
    if (json['playlistlistItemList'] != null) {
      json['playlistlistItemList'].forEach((itemJson) {
        playlistlist.add(PlaylistlistItemModel.fromJson(itemJson));
      });
    }

    // Parse containerItemList
    List<ContainerItemModel> containerList = [];
    if (json['containerItemList'] != null) {
      json['containerItemList'].forEach((itemJson) {
        containerList.add(ContainerItemModel.fromJson(itemJson));
      });
    }

    // Parse songlistItemList
    List<SonglistItemModel> songlist = [];
    if (json['songlistItemList'] != null) {
      json['songlistItemList'].forEach((itemJson) {
        songlist.add(SonglistItemModel.fromJson(itemJson));
      });
    }

    return HomepageModel(
      playlistlistItemList: playlistlist,
      containerItemList: containerList,
      songlistItemList: songlist,
    );
  }

  @override
  List<Object?> get props => [
        playlistlistItemList,
        containerItemList,
        songlistItemList,
      ];
}
