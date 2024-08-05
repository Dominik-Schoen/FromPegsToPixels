import 'package:fartigue/scribble_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: FartigueApp(),
    ),
  );
}

class FartigueApp extends StatelessWidget {
  const FartigueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScribbleView()
    );
  }
}