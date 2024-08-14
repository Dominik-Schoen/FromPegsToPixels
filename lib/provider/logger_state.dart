import 'package:freezed_annotation/freezed_annotation.dart';

part 'logger_state.freezed.dart';
part 'logger_state.g.dart';

@freezed
class LoggerState with _$LoggerState {
  const factory LoggerState({
    required String participantID,
    required String startTime,
    required String borg,
    @Default([]) List<double> pressureTimeSeriesLoops,
    @Default([]) List<double> deltaDistanceTimeSeriesLoops,
    @Default([]) List<double> orientationTimeSeriesLoops,
    @Default([]) List<double> tiltTimeSeriesLoops,
    @Default([]) List<int> timestampLoops,
    @Default([]) List<double> pressureTimeSeriesPentagons,
    @Default([]) List<double> deltaDistanceTimeSeriesPentagons,
    @Default([]) List<double> orientationTimeSeriesPentagons,
    @Default([]) List<double> tiltTimeSeriesPentagons,
    @Default([]) List<int> timestampPentagons,
    @Default([]) List<double> pressureTimeSeriesLuria,
    @Default([]) List<double> deltaDistanceTimeSeriesLuria,
    @Default([]) List<double> orientationTimeSeriesLuria,
    @Default([]) List<double> tiltTimeSeriesLuria,
    @Default([]) List<int> timestampLuria,
    @Default([]) List<double> pressureTimeSeriesSpiral,
    @Default([]) List<double> deltaDistanceTimeSeriesSpiral,
    @Default([]) List<double> orientationTimeSeriesSpiral,
    @Default([]) List<double> tiltTimeSeriesSpiral,
    @Default([]) List<int> timestampSpiral,
    @Default([]) List<String> files,
  }) = _LoggerState;

  factory LoggerState.fromJson(Map<String, Object?> json) =>
      _$LoggerStateFromJson(json);
}
