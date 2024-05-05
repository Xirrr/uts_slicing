import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/detail_model.dart';
part 'detail_state.dart';

final detailNotifier = StateNotifierProvider<DetailNotifier, DetailState>(
  (ref) => DetailNotifier(DetailState(
    detailModelObj: DetailModel(),
  )),
);

/// A notifier that manages the state of a Detail according to the event that is dispatched to it.
class DetailNotifier extends StateNotifier<DetailState> {
  DetailNotifier(DetailState state) : super(state);
}
