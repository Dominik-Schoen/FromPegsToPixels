import 'package:flutter/material.dart';
import 'package:scribble/scribble.dart';

class ScribbleView extends StatefulWidget {
  const ScribbleView({super.key});

  @override
  State<ScribbleView> createState() => _ScribbleViewState();
}

class _ScribbleViewState extends State<ScribbleView> {
  late ScribbleNotifier notifier;

  @override
  void initState() {
    notifier = ScribbleNotifier();
    notifier.setStrokeWidth(3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Copy the shown image"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          FilledButton.tonal(
            onPressed: () {
              notifier.clear();
            }, 
            child: const Text("clear"),
          ),
          FilledButton(
            onPressed: () {}, 
            child: const Row(
              children: [
                Text("next"),
                Icon(Icons.navigate_next),
              ],
            ),
          ),
        ],
      ),
      body: Listener(
        onPointerMove: (event) {
          print("pressure: ${event.pressure}");
        },
        child: Scribble(
          notifier: notifier,
        ),
      ),
    );
  }
}
