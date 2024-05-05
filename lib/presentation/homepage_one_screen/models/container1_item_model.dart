import '../../../core/app_export.dart';

/// This class is used in the [container1_item_widget] screen.
// ignore_for_file: must_be_immutable

class Container1ItemModel {
  Container1ItemModel({this.jamesAdamOne, this.jamesadam, this.id}) {
    jamesAdamOne = jamesAdamOne ?? ImageConstant.imgPhoto;
    jamesadam = jamesadam ?? "James adam";
    id = id ?? "";
  }

  String? jamesAdamOne;

  String? jamesadam;

  String? id;
}
