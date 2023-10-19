/* Page to show while looking for device */

import 'package:flutter/material.dart';
import 'device_search_result.dart';

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
            // create custom loader icon
            Stack(
              alignment: Alignment.center,
              children: const <Widget>[
                SizedBox(
                    width: 150,
                    height: 150,
                    child: CircularProgressIndicator(
                      value: null,
                      color: Colors.blue,
                    )),
                Icon(
                  Icons.bluetooth_searching,
                  size: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DevicePairingResultPage(
                        title: widget.title, result: true),
                  ),
                );
              },
              child: const Text("DEBUG: Go to success page"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DevicePairingResultPage(
                        title: widget.title, result: false),
                  ),
                );
              },
              child: const Text("DEBUG: Go to failure page"),
            ),
          ],
        ),
      ),
    );
  }
}
