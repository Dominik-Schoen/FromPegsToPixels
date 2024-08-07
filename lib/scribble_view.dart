import 'dart:math';

import 'package:fartigue/borg_view.dart';
import 'package:fartigue/provider/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scribble/scribble.dart';

enum ScribbleType {
  loops,
  pentagons;

  @override
  String toString() => name;
}

class ScribbleView extends ConsumerStatefulWidget {
  final List<ScribbleType> taskTypeList;

  const ScribbleView({required this.taskTypeList, super.key});

  @override
  ConsumerState<ScribbleView> createState() => _ScribbleViewState();
}

class _ScribbleViewState extends ConsumerState<ScribbleView> {
  late ScribbleNotifier notifier;
  final List<double> pressureTimeSeries = [];
  final List<double> deltaDistanceTimeSeries = [];
  final List<double> orientationTimeSeries = [];
  final List<double> tiltTimeSeries = [];

  @override
  void initState() {
    notifier = ScribbleNotifier();
    notifier.setStrokeWidth(3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String taskFilePath = widget.taskTypeList[0] == ScribbleType.loops
        ? 'assets/img/muster2.png'
        : 'assets/img/muster1.png';

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
              saveData();
              moveToNextView();
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
          logPointerMoveEvent(event);
        },
        child: Column(
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              const Text(
                "Copy this image to the area below",
                style: TextStyle(
                  color: Color.fromARGB(255, 109, 109, 109),
                  fontSize: 16,
                ),
              ),
              Image(
                height: 200,
                image: AssetImage(taskFilePath),
              ),
            ]),
            const Divider(
              thickness: 3,
            ),
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

  void logPointerMoveEvent(PointerMoveEvent e) {
    pressureTimeSeries.add(e.pressure);
    deltaDistanceTimeSeries.add(e.delta.distance);
    orientationTimeSeries.add(e.orientation);
    tiltTimeSeries.add(e.tilt);
  }

  void saveData() {
    ref.read(loggerProvider.notifier).saveImage(notifier.renderImage(),
        "${widget.taskTypeList[0].toString()}_scribble.png");

    ref.read(loggerProvider.notifier).saveTimeSerieses(
        widget.taskTypeList[0],
        pressureTimeSeries,
        deltaDistanceTimeSeries,
        orientationTimeSeries,
        tiltTimeSeries);
  }

  void moveToNextView() {
    List<ScribbleType> remainingTasks = widget.taskTypeList.sublist(1);
    if (remainingTasks.isEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const BorgView(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ScribbleView(
            taskTypeList: remainingTasks,
          ),
        ),
      );
    }
  }
}

extension ScribbleTypeExtension on ScribbleType {
  static List<ScribbleType> generateRandomOrder(int n) {
    var rnd = Random();
    return List.generate(
        n, (i) => ScribbleType.values[rnd.nextInt(ScribbleType.values.length)]);
  }

  static List<ScribbleType> generateRandomUniqueOrder(int n) {
    var list = List<ScribbleType>.from(ScribbleType.values)..shuffle();
    return list.take(n).toList();
  }
}
