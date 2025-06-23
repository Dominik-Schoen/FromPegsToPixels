import 'dart:math';
import 'package:pegstopixels/participant_view.dart';
import 'package:pegstopixels/provider/logger.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scribble/scribble.dart';

enum ScribbleType {
  loopsTouch,
  spiralTouch,
  loopsPen,
  spiralPen;

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
  final List<int> timestamps = [];
  final List<double> dxTimeSeries = [];
  final List<double> dyTimeSeries = [];
  final List<double> xTimeSeries = [];
  final List<double> yTimeSeries = [];

  @override
  void initState() {
    if (isUserSupposedToUsePen(widget.taskTypeList[0])) {
      notifier = ScribbleNotifier(
        allowedPointersMode: ScribblePointerMode.penOnly,
      );
    } else {
      notifier = ScribbleNotifier(
        allowedPointersMode: ScribblePointerMode.all,
      );
    }

    notifier.setStrokeWidth(3);
    super.initState();
  }

  bool isUserSupposedToUsePen(ScribbleType task) {
    return task == ScribbleType.loopsPen || task == ScribbleType.spiralPen;
  }

  String getTaskFilePath(ScribbleType task) {
    switch (task) {
      case ScribbleType.loopsTouch:
        return 'assets/img/muster2.png';
      case ScribbleType.loopsPen:
        return 'assets/img/muster2.png';
      case ScribbleType.spiralTouch:
        return 'assets/img/muster4.png';
      case ScribbleType.spiralPen:
        return 'assets/img/muster4.png';
    }
  }

  String getTaskDevice(ScribbleType task) {
    switch (task) {
      case ScribbleType.loopsTouch:
        return 'TOUCH';
      case ScribbleType.loopsPen:
        return 'PEN';
      case ScribbleType.spiralTouch:
        return 'TOUCH';
      case ScribbleType.spiralPen:
        return 'PEN';
    }
  }

  @override
  Widget build(BuildContext context) {
    final String taskFilePath = getTaskFilePath(widget.taskTypeList[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            text: 'Copy the shown image using the ', // default text style
            children: <TextSpan>[
              TextSpan(
                text: getTaskDevice(widget.taskTypeList[0]),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
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
              Text.rich(
                TextSpan(
                  text: 'Copy the shown image using the ', // default text style
                  children: <TextSpan>[
                    TextSpan(
                      text: getTaskDevice(widget.taskTypeList[0]),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // const Text(
              //   "Copy this image to the area below",
              //   style: TextStyle(
              //     color: Color.fromARGB(255, 109, 109, 109),
              //     fontSize: 16,
              //   ),
              // ),
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
    //print("DEVICE: " + e.kind.toString());
    if (isUserSupposedToUsePen(widget.taskTypeList[0]) &&
        e.kind != PointerDeviceKind.stylus) {
      return;
    }

    if (!isUserSupposedToUsePen(widget.taskTypeList[0]) &&
        e.kind != PointerDeviceKind.touch) {
      return;
    }

    xTimeSeries.add(e.position.dx);
    yTimeSeries.add(e.position.dy);
    dxTimeSeries.add(e.delta.dx);
    dyTimeSeries.add(e.delta.dy);
    pressureTimeSeries.add(e.pressure);
    deltaDistanceTimeSeries.add(e.delta.distance);
    orientationTimeSeries.add(e.orientation);
    tiltTimeSeries.add(e.tilt);
    timestamps.add(e.timeStamp.inMilliseconds);
  }

  void saveData() {
    ref.read(loggerProvider.notifier).saveImage(notifier.renderImage(),
        "${widget.taskTypeList[0].toString()}_scribble.png");

    ref.read(loggerProvider.notifier).saveTimeSerieses(
        widget.taskTypeList[0],
        pressureTimeSeries,
        deltaDistanceTimeSeries,
        orientationTimeSeries,
        tiltTimeSeries,
        timestamps,
        dxTimeSeries,
        dyTimeSeries,
        xTimeSeries,
        yTimeSeries);
  }

  void moveToNextView() {
    List<ScribbleType> remainingTasks = widget.taskTypeList.sublist(1);
    if (remainingTasks.isEmpty) {
      ref.read(loggerProvider.notifier).saveMetaFile("meta.json");

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => const ParticipantView(),
        ),
        (Route<dynamic> route) => false,
      );

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (_) => const BorgView(),
      //   ),
      // );
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
