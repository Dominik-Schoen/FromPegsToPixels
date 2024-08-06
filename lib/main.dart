import 'package:fartigue/participant_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) {
    runApp(
      const ProviderScope(
        child: FartigueApp(),
      ),
    );
  });
}

class FartigueApp extends StatelessWidget {
  const FartigueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParticipantView(),
    );
  }
}
