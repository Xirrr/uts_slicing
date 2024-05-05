part of 'homepage_container_notifier.dart';

/// Represents the state of HomepageContainer in the application.

// ignore_for_file: must_be_immutable
class HomepageContainerState extends Equatable {
  HomepageContainerState({this.homepageContainerModelObj});

  HomepageContainerModel? homepageContainerModelObj;

  @override
  List<Object?> get props => [homepageContainerModelObj];
  HomepageContainerState copyWith(
      {HomepageContainerModel? homepageContainerModelObj}) {
    return HomepageContainerState(
      homepageContainerModelObj:
          homepageContainerModelObj ?? this.homepageContainerModelObj,
    );
  }
}
