import 'package:fartigue/provider/logger.dart';
import 'package:fartigue/scribble_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ParticipantView extends ConsumerStatefulWidget {
  const ParticipantView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ParticipantViewState();
}

class _ParticipantViewState extends ConsumerState<ParticipantView> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Please enter your Participant ID"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          FilledButton(
            onPressed: () {
              if (_textEditingController.text.isEmpty) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: const Text("Please enter a Participant ID"),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
                return;
              }

              ref
                  .watch(loggerProvider.notifier)
                  .setParticipantId(_textEditingController.text);

              ref.watch(loggerProvider.notifier).setStartTimeToNow();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ScribbleView(
                    taskTypeList: ScribbleTypeExtension.generateRandomUniqueOrder(2),
                  ),
                ),
              );
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
      body: Center(
        child: SizedBox(
          width: 200,
          child: TextField(
            autofocus: true,
            controller: _textEditingController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Participant ID",
            ),
          ),
        ),
      ),
    );
  }
}
