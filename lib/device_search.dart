/* Page to show while looking for device */

import 'package:flutter/material.dart';

class DevicePairingPage extends StatefulWidget {
  const DevicePairingPage({Key? key, required this.title}) : super(key: key);

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
            const SizedBox(
                width: 150,
                height: 150,
                child: CircularProgressIndicator(value: null)),
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
