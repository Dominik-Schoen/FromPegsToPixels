import 'dart:io';
import 'dart:typed_data';
import 'package:fartigue/provider/logger_state.dart';
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

  void logPointerMoveEvent(PointerMoveEvent e) {
    debugPrint("pressure: ${e.pressure}");
  }

  void savePressureTimeSeries(List<double> pressureTs) {
    state = state.copyWith(pressureTimeSeries: pressureTs);
  }

  void saveImage(Future<ByteData> image, String fileName) async {
    ByteData imageData = await image;
    final buffer = imageData.buffer;
    final Directory downloadsDir = await getApplicationDocumentsDirectory();
    String filePath =
        (path.join(downloadsDir.path, _getFileNamePrefix() + fileName));
    await File(filePath).writeAsBytes(
        buffer.asUint8List(imageData.offsetInBytes, imageData.lengthInBytes));
    debugPrint("Save image with ${imageData.lengthInBytes} bytes to $filePath");
  }

  String _getFileNamePrefix() {
    return "${state.participantID}_${state.startTime}";
  }
}
