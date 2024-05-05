import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/container1_item_model.dart';
import '../models/homepage_one_model.dart';
import '../models/listsongtitle_item_model.dart';
import '../models/playlist_item_model.dart';
part 'homepage_one_state.dart';

final homepageOneNotifier =
    StateNotifierProvider<HomepageOneNotifier, HomepageOneState>(
  (ref) => HomepageOneNotifier(HomepageOneState(
    homepageOneModelObj: HomepageOneModel(playlistItemList: [
      PlaylistItemModel(
          playlistImage: ImageConstant.imgRectangle5,
          playlistTitle: "Indonesian pops",
          playlistArtists: "Nadine amizah, Ghea Indrawari, Yura Yunita"),
      PlaylistItemModel(
          playlistImage: ImageConstant.imgRectangle5100x192,
          playlistTitle: "90s hiphop mix",
          playlistArtists: "Nadine amizah, Ghea Indrawari, Yura Yunita")
    ], container1ItemList: [
      Container1ItemModel(
          jamesAdamOne: ImageConstant.imgPhoto, jamesadam: "James adam"),
      Container1ItemModel(
          jamesAdamOne: ImageConstant.imgPhoto40x40, jamesadam: "Nugroho alis"),
      Container1ItemModel(
          jamesAdamOne: ImageConstant.imgPhoto1, jamesadam: "Maria Srinirani"),
      Container1ItemModel(
          jamesAdamOne: ImageConstant.imgPhoto2, jamesadam: "Yoshi Jundiara")
    ], listsongtitleItemList: [
      ListsongtitleItemModel(
          songImage: ImageConstant.imgRectangle5100x152,
          songTitle: "Hidupku indah",
          artistName: "James adam"),
      ListsongtitleItemModel(
          songImage: ImageConstant.imgRectangle51,
          songTitle: "Begitu adanya",
          artistName: "Nugroho alis"),
      ListsongtitleItemModel(
          songImage: ImageConstant.imgRectangle52,
          songTitle: "Ya begitulah",
          artistName: "Maria Srinirani")
    ]),
  )),
);

/// A notifier that manages the state of a HomepageOne according to the event that is dispatched to it.
class HomepageOneNotifier extends StateNotifier<HomepageOneState> {
  HomepageOneNotifier(HomepageOneState state) : super(state);
}
