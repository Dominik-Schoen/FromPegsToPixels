import 'package:fartigue/participant_view.dart';
import 'package:fartigue/provider/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Borg {
  b6,
  b7,
  b8,
  b9,
  b10,
  b11,
  b12,
  b13,
  b14,
  b15,
  b16,
  b17,
  b18,
  b19,
  b20,
}

class BorgView extends ConsumerStatefulWidget {
  const BorgView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BorgViewState();
}

class _BorgViewState extends ConsumerState<BorgView> {
  Borg? _borg = Borg.b6;
  double _containerWidth = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Please enter your Borg scale"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          FilledButton(
            onPressed: () {
              ref.read(loggerProvider.notifier).setBorgValue(_borg!);
              ref.read(loggerProvider.notifier).saveMetaFile("meta.json");

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => const ParticipantView(),
                ),
                (Route<dynamic> route) => false,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Rank your current exertion:"),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("6"),
                leading: Radio<Borg>(
                  value: Borg.b6,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("7 - very, very light"),
                leading: Radio<Borg>(
                  value: Borg.b7,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("8"),
                leading: Radio<Borg>(
                  value: Borg.b8,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("9 - very light"),
                leading: Radio<Borg>(
                  value: Borg.b9,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("10"),
                leading: Radio<Borg>(
                  value: Borg.b10,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("11 - fairly light"),
                leading: Radio<Borg>(
                  value: Borg.b11,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("12"),
                leading: Radio<Borg>(
                  value: Borg.b12,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("13 - somewhat hard"),
                leading: Radio<Borg>(
                  value: Borg.b13,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("14"),
                leading: Radio<Borg>(
                  value: Borg.b14,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("15 - hard"),
                leading: Radio<Borg>(
                  value: Borg.b15,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("16"),
                leading: Radio<Borg>(
                  value: Borg.b16,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("17 - very hard"),
                leading: Radio<Borg>(
                  value: Borg.b17,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("18"),
                leading: Radio<Borg>(
                  value: Borg.b18,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("19 - very, very hard"),
                leading: Radio<Borg>(
                  value: Borg.b19,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: _containerWidth,
              child: ListTile(
                title: const Text("20"),
                leading: Radio<Borg>(
                  value: Borg.b20,
                  groupValue: _borg,
                  onChanged: (Borg? value) {
                    setState(() {
                      _borg = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
