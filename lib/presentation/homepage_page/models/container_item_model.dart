import '../../../core/app_export.dart';

/// This class represents data used in the ContainerItemWidget screen.
class ContainerItemModel {
  String jamesAdamOne;
  String jamesadam;
  String id;

  ContainerItemModel({
    String? jamesAdamOne,
    String? jamesadam,
    String? id,
  })  : this.jamesAdamOne = jamesAdamOne ?? ImageConstant.imgPhoto,
        this.jamesadam = jamesadam ?? "James adam",
        this.id = id ?? "";

  // Factory constructor to create ContainerItemModel from a map
  factory ContainerItemModel.fromJson(Map<String, dynamic> json) {
    return ContainerItemModel(
      jamesAdamOne: json['jamesAdamOne'],
      jamesadam: json['jamesadam'],
      id: json['id'],
    );
  }

  // Method to convert ContainerItemModel to a map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jamesAdamOne'] = this.jamesAdamOne;
    data['jamesadam'] = this.jamesadam;
    data['id'] = this.id;
    return data;
  }
}
