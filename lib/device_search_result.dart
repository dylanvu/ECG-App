/* Page to show after looking for device */

// The hardware team has learned some software

import 'package:flutter/material.dart';

import 'device_search.dart';
import 'main.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.result
                ? const Icon(
                    Icons.bluetooth_connected,
                    size: 200,
                    color: Colors.blue,
                  )
                : const Icon(
                    Icons.bluetooth_disabled,
                    size: 200,
                    color: Colors.blue,
                  ),
            if (!widget.result)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          DevicePairingPage(title: widget.title),
                    ),
                  );
                },
                child: const Text("Try Again"),
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(title: widget.title),
                  ),
                );
              },
              child: const Text("Return to Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
