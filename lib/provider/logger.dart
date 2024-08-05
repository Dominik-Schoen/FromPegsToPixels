import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path/path.dart' as path;

part 'logger.g.dart';

@riverpod
class Logger extends _$Logger {
  @override
  void build() {
    return;
  }

  void logPointerMoveEvent(PointerMoveEvent e) {
    debugPrint("pressure: ${e.pressure}");
  }

  void saveImage(Future<ByteData> image, String fileName) async {
    ByteData imageData = await image;
    final buffer = imageData.buffer;
    final Directory downloadsDir = await getApplicationDocumentsDirectory();
    String filePath = (path.join(downloadsDir.path, fileName));
    await File(filePath).writeAsBytes(
        buffer.asUint8List(imageData.offsetInBytes, imageData.lengthInBytes));
    debugPrint("Save image with ${imageData.lengthInBytes} bytes to $filePath");
  }
}
