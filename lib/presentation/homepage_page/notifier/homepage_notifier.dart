import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/container_item_model.dart';
import '../models/homepage_model.dart';
import '../models/playlistlist_item_model.dart';
import '../models/songlist_item_model.dart';
part 'homepage_state.dart';

final homepageNotifier = StateNotifierProvider<HomepageNotifier, HomepageState>(
  (ref) => HomepageNotifier(HomepageState(
    homepageModelObj: HomepageModel(playlistlistItemList: [
      PlaylistlistItemModel(
          playlistImage: ImageConstant.imgRectangle5,
          playlistTitle: "Indonesian pops",
          playlistArtists: "Nadine amizah, Ghea Indrawari, Yura Yunita"),
      PlaylistlistItemModel(
          playlistImage: ImageConstant.imgRectangle5100x192,
          playlistTitle: "90s hiphop mix",
          playlistArtists: "Nadine amizah, Ghea Indrawari, Yura Yunita")
    ], containerItemList: [
      ContainerItemModel(
          jamesAdamOne: ImageConstant.imgPhoto, jamesadam: "James adam"),
      ContainerItemModel(
          jamesAdamOne: ImageConstant.imgPhoto40x40, jamesadam: "Nugroho alis"),
      ContainerItemModel(
          jamesAdamOne: ImageConstant.imgPhoto1, jamesadam: "Maria Srinirani"),
      ContainerItemModel(
          jamesAdamOne: ImageConstant.imgPhoto2, jamesadam: "Yoshi Jundiara")
    ], songlistItemList: [
      SonglistItemModel(
          songImage: ImageConstant.imgRectangle5100x152,
          songTitle: "Hidupku indah",
          artistName: "James adam"),
      SonglistItemModel(
          songImage: ImageConstant.imgRectangle51,
          songTitle: "Begitu adanya",
          artistName: "Nugroho alis"),
      SonglistItemModel(
          songImage: ImageConstant.imgRectangle52,
          songTitle: "Ya begitulah",
          artistName: "Maria Srinirani")
    ]),
  )),
);

/// A notifier that manages the state of a Homepage according to the event that is dispatched to it.
class HomepageNotifier extends StateNotifier<HomepageState> {
  HomepageNotifier(HomepageState state) : super(state);
}
