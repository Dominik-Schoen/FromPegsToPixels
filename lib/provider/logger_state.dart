import 'package:freezed_annotation/freezed_annotation.dart';

part 'logger_state.freezed.dart';
part 'logger_state.g.dart';

@freezed
class LoggerState with _$LoggerState {
  const factory LoggerState({
    required String participantID,
    required String startTime,
    required String borg,
    @Default([]) List<double> pressureTimeSeriesLoopsTouch,
    @Default([]) List<double> deltaDistanceTimeSeriesLoopsTouch,
    @Default([]) List<double> orientationTimeSeriesLoopsTouch,
    @Default([]) List<double> tiltTimeSeriesLoopsTouch,
    @Default([]) List<double> dxTimeSeriesLoopsTouch,
    @Default([]) List<double> dyTimeSeriesLoopsTouch,
    @Default([]) List<double> xTimeSeriesLoopsTouch,
    @Default([]) List<double> yTimeSeriesLoopsTouch,
    @Default([]) List<int> timestampLoopsTouch,
    @Default([]) List<double> pressureTimeSeriesSpiralTouch,
    @Default([]) List<double> deltaDistanceTimeSeriesSpiralTouch,
    @Default([]) List<double> orientationTimeSeriesSpiralTouch,
    @Default([]) List<double> tiltTimeSeriesSpiralTouch,
    @Default([]) List<double> dxTimeSeriesSpiralTouch,
    @Default([]) List<double> dyTimeSeriesSpiralTouch,
    @Default([]) List<double> xTimeSeriesSpiralTouch,
    @Default([]) List<double> yTimeSeriesSpiralTouch,
    @Default([]) List<int> timestampSpiralTouch,
    @Default([]) List<double> pressureTimeSeriesLoopsPen,
    @Default([]) List<double> deltaDistanceTimeSeriesLoopsPen,
    @Default([]) List<double> orientationTimeSeriesLoopsPen,
    @Default([]) List<double> tiltTimeSeriesLoopsPen,
    @Default([]) List<double> dxTimeSeriesLoopsPen,
    @Default([]) List<double> dyTimeSeriesLoopsPen,
    @Default([]) List<double> xTimeSeriesLoopsPen,
    @Default([]) List<double> yTimeSeriesLoopsPen,
    @Default([]) List<int> timestampLoopsPen,
    @Default([]) List<double> pressureTimeSeriesSpiralPen,
    @Default([]) List<double> deltaDistanceTimeSeriesSpiralPen,
    @Default([]) List<double> orientationTimeSeriesSpiralPen,
    @Default([]) List<double> tiltTimeSeriesSpiralPen,
    @Default([]) List<double> dxTimeSeriesSpiralPen,
    @Default([]) List<double> dyTimeSeriesSpiralPen,
    @Default([]) List<double> xTimeSeriesSpiralPen,
    @Default([]) List<double> yTimeSeriesSpiralPen,
    @Default([]) List<int> timestampSpiralPen,
    @Default([]) List<String> files,
  }) = _LoggerState;

  factory LoggerState.fromJson(Map<String, Object?> json) =>
      _$LoggerStateFromJson(json);
}
