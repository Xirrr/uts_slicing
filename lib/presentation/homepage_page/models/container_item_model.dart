import '../../../core/app_export.dart';

/// This class is used in the [container_item_widget] screen.
// ignore_for_file: must_be_immutable

class ContainerItemModel {
  ContainerItemModel({this.jamesAdamOne, this.jamesadam, this.id}) {
    jamesAdamOne = jamesAdamOne ?? ImageConstant.imgPhoto;
    jamesadam = jamesadam ?? "James adam";
    id = id ?? "";
  }

  String? jamesAdamOne;

  String? jamesadam;

  String? id;
}
