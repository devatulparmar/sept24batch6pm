import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  void _openDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(
          // backgroundColor: Colors.red,
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hello'),
          ),
        );
      },
    );
  }

  void _openAlertDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Flexible(
                child: Text(
                  'Hello This is TitleHello This is TitleHello This is TitleHello This is TitleHello This is Title',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          alignment: Alignment.center,
          content: const Text(
            'This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.This is subtitle content.',
            textAlign: TextAlign.justify,
          ),
          icon: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // API call
              },
              child: const Text('Ok'),
            ),
          ],
          actionsAlignment: MainAxisAlignment.center,
          scrollable: true,
          // actionsOverflowButtonSpacing: 500,
          // actionsOverflowAlignment: OverflowBarAlignment.start,
          // actionsOverflowDirection: VerticalDirection.down,
          // actionsPadding: EdgeInsets.zero,
        );
      },
    );
  }

  void _openAboutDialog() async {
    showAboutDialog(
      context: context,
      applicationIcon: const Icon(Icons.mobile_friendly),
      applicationName: "Batch 7 PM",
      applicationVersion: "1.0.0",
      anchorPoint: const Offset(0, 0),
      applicationLegalese: "Batch 7 PM Legalese",
      barrierLabel: 'Label',
      barrierColor: Colors.red,
      children: [
        Image.asset("images/image2.jpeg"),
      ],
      barrierDismissible: true,
    );
  }

  void _openCupertinoDialogAction() async {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoDialogAction(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Hello'),
            ),
            onPressed: () {},
          );
        });
  }

  void _openCupertinoAlertDialog() async {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Row(
              children: [
                Flexible(
                  child: Text(
                    'Hello This is Title.',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            content: const Text(
              'This is subtitle content.',
              textAlign: TextAlign.justify,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  // API call
                },
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  void _openBottomSheet() async {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      showDragHandle: true,
      barrierColor: Colors.black26,
      isDismissible: false,
      barrierLabel: 'Label',
      builder: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: CupertinoDatePicker(
                onDateTimeChanged: (time) {
                  print(time);
                },
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.date,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Screen'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _openDialog(),
            child: const Text('Dialog'),
          ),
          ElevatedButton(
            onPressed: () => _openAlertDialog(),
            child: const Text('Alert Dialog'),
          ),
          ElevatedButton(
            onPressed: () => _openAboutDialog(),
            child: const Text('About Dialog'),
          ),
          ElevatedButton(
            onPressed: () => _openCupertinoDialogAction(),
            child: const Text('Cupertino Dialog Action'),
          ),
          ElevatedButton(
            onPressed: () => _openCupertinoAlertDialog(),
            child: const Text('Cupertino Alert Dialog'),
          ),
          ElevatedButton(
            onPressed: () => _openBottomSheet(),
            child: const Text('Bottom Sheet'),
          ),
        ],
      ),
    );
  }
}
