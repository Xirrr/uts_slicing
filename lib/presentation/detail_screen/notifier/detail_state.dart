part of 'detail_notifier.dart';

/// Represents the state of Detail in the application.

// ignore_for_file: must_be_immutable
class DetailState extends Equatable {
  DetailState({this.detailModelObj});

  DetailModel? detailModelObj;

  @override
  List<Object?> get props => [detailModelObj];
  DetailState copyWith({DetailModel? detailModelObj}) {
    return DetailState(
      detailModelObj: detailModelObj ?? this.detailModelObj,
    );
  }
}
