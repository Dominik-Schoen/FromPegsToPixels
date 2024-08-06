import 'package:freezed_annotation/freezed_annotation.dart';

part 'logger_state.freezed.dart';

@freezed
class LoggerState with _$LoggerState {
  const factory LoggerState({
    required String participantID,
    required String startTime,
    @Default([]) List<double> pressureTimeSeries,
  }) = _LoggerState;
}
