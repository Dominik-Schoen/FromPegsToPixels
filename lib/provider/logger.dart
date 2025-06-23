import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:pegstopixels/borg_view.dart';
import 'package:pegstopixels/provider/logger_state.dart';
import 'package:pegstopixels/scribble_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path/path.dart' as path;

part 'logger.g.dart';

@riverpod
class Logger extends _$Logger {
  @override
  LoggerState build() {
    return LoggerState(
      participantID: "-1",
      borg: "-1",
      startTime: DateFormat("yyyy-MM-dd_HH-mm-ss_").format(DateTime.now()),
    );
  }

  void setParticipantId(String newPid) {
    state = state.copyWith(participantID: newPid);
  }

  void setStartTimeToNow() {
    state = state.copyWith(
      startTime: DateFormat("yyyy-MM-dd_HH-mm-ss_").format(DateTime.now()),
    );
  }

  void setBorgValue(Borg b) {
    state = state.copyWith(borg: b.toString());
  }

  void saveTimeSerieses(
      ScribbleType task,
      List<double> pressureTs,
      List<double> deltaTs,
      List<double> orientationTs,
      List<double> tiltTs,
      List<int> timestamps,
      List<double> dx,
      List<double> dy,
      List<double> x,
      List<double> y) {
    switch (task) {
      case ScribbleType.loopsTouch:
        state = state.copyWith(
          pressureTimeSeriesLoopsTouch: pressureTs,
          deltaDistanceTimeSeriesLoopsTouch: deltaTs,
          orientationTimeSeriesLoopsTouch: orientationTs,
          tiltTimeSeriesLoopsTouch: tiltTs,
          timestampLoopsTouch: timestamps,
          dxTimeSeriesLoopsTouch: dx,
          dyTimeSeriesLoopsTouch: dy,
          xTimeSeriesLoopsTouch: x,
          yTimeSeriesLoopsTouch: y,
        );
        break;
      case ScribbleType.spiralTouch:
        state = state.copyWith(
          pressureTimeSeriesSpiralTouch: pressureTs,
          deltaDistanceTimeSeriesSpiralTouch: deltaTs,
          orientationTimeSeriesSpiralTouch: orientationTs,
          tiltTimeSeriesSpiralTouch: tiltTs,
          timestampSpiralTouch: timestamps,
          dxTimeSeriesSpiralTouch: dx,
          dyTimeSeriesSpiralTouch: dy,
          xTimeSeriesSpiralTouch: x,
          yTimeSeriesSpiralTouch: y,
        );
        break;
      case ScribbleType.loopsPen:
        state = state.copyWith(
          pressureTimeSeriesLoopsPen: pressureTs,
          deltaDistanceTimeSeriesLoopsPen: deltaTs,
          orientationTimeSeriesLoopsPen: orientationTs,
          tiltTimeSeriesLoopsPen: tiltTs,
          timestampLoopsPen: timestamps,
          dxTimeSeriesLoopsPen: dx,
          dyTimeSeriesLoopsPen: dy,
          xTimeSeriesLoopsPen: x,
          yTimeSeriesLoopsPen: y,
        );
        break;
      case ScribbleType.spiralPen:
        state = state.copyWith(
          pressureTimeSeriesSpiralPen: pressureTs,
          deltaDistanceTimeSeriesSpiralPen: deltaTs,
          orientationTimeSeriesSpiralPen: orientationTs,
          tiltTimeSeriesSpiralPen: tiltTs,
          timestampSpiralPen: timestamps,
          dxTimeSeriesSpiralPen: dx,
          dyTimeSeriesSpiralPen: dy,
          xTimeSeriesSpiralPen: x,
          yTimeSeriesSpiralPen: y,
        );
        break;
    }
  }

  void saveImage(Future<ByteData> image, String fileName) async {
    state = state
        .copyWith(files: [...state.files, _getFileNamePrefix() + fileName]);

    ByteData imageData = await image;
    final buffer = imageData.buffer;
    final Directory downloadsDir = await getApplicationDocumentsDirectory();
    String filePath =
        (path.join(downloadsDir.path, _getFileNamePrefix() + fileName));
    await File(filePath).writeAsBytes(
        buffer.asUint8List(imageData.offsetInBytes, imageData.lengthInBytes));
    debugPrint("Save image with ${imageData.lengthInBytes} bytes to $filePath");
  }

  Future saveMetaFile(String fileName) async {
    final jsonString = jsonEncode(state.toJson());
    final Directory downloadsDir = await getApplicationDocumentsDirectory();
    final filePath =
        (path.join(downloadsDir.path, _getFileNamePrefix() + fileName));
    await File(filePath).writeAsString(jsonString);
    debugPrint("Saved meta file to $filePath");
  }

  String _getFileNamePrefix() {
    return "${state.participantID}_${state.startTime}";
  }

  void reset() {
    state = LoggerState(
      participantID: "-1",
      borg: "-1",
      startTime: DateTime.now().toString(),
    );
  }
}
