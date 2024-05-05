import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/homepage_container_model.dart';
part 'homepage_container_state.dart';

final homepageContainerNotifier =
    StateNotifierProvider<HomepageContainerNotifier, HomepageContainerState>(
  (ref) => HomepageContainerNotifier(HomepageContainerState(
    homepageContainerModelObj: HomepageContainerModel(),
  )),
);

/// A notifier that manages the state of a HomepageContainer according to the event that is dispatched to it.
class HomepageContainerNotifier extends StateNotifier<HomepageContainerState> {
  HomepageContainerNotifier(HomepageContainerState state) : super(state);
}
