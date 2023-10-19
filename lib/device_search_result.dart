/* Page to show after looking for device */

// The hardware team has learned some software

import 'package:flutter/material.dart';

class DevicePairingResultPage extends StatefulWidget {
  const DevicePairingResultPage(
      {Key? key, required this.title, required this.result})
      : super(key: key);

  final String title;
  final bool result;

  @override
  State<DevicePairingResultPage> createState() =>
      _DevicePairingResultPageState();
}

class _DevicePairingResultPageState extends State<DevicePairingResultPage> {
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
