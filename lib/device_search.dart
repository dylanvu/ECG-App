/* Page to show while looking for device */

import 'package:flutter/material.dart';

class DevicePairingPage extends StatefulWidget {
  const DevicePairingPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<DevicePairingPage> createState() => _DevicePairingPageState();
}

class _DevicePairingPageState extends State<DevicePairingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircularProgressIndicator(value: null),
            TextButton(
              onPressed: () {},
              child: const Text("DEBUG: Go to success page"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("DEBUG: Go to failure page"),
            ),
          ],
        ),
      ),
    );
  }
}
