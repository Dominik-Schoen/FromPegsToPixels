import 'package:fartigue/provider/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scribble/scribble.dart';

class ScribbleView extends ConsumerStatefulWidget {
  const ScribbleView({super.key});

  @override
  ConsumerState<ScribbleView> createState() => _ScribbleViewState();
}

class _ScribbleViewState extends ConsumerState<ScribbleView> {
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
            onPressed: () {
              ref.read(loggerProvider.notifier).saveImage(notifier.renderImage(), "test.png");
              //notifier.renderImage();
            },
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
          ref.read(loggerProvider.notifier).logPointerMoveEvent(event);
        },
        child: Column(
          children: [
            const Image(
              height: 200,
              image: AssetImage('assets/img/muster1.png'),
            ),
            const Divider(thickness: 3,),
            Expanded(
              child: Scribble(
                notifier: notifier,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
