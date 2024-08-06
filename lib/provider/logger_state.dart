import 'package:freezed_annotation/freezed_annotation.dart';

part 'logger_state.freezed.dart';
part 'logger_state.g.dart';

@freezed
class LoggerState with _$LoggerState {
  const factory LoggerState({
    required String participantID,
    required String startTime,
    @Default([]) List<double> pressureTimeSeries,
    @Default([]) List<String> files,
  }) = _LoggerState;

  factory LoggerState.fromJson(Map<String, Object?> json)
      => _$LoggerStateFromJson(json);
}
