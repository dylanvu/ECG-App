import 'package:ecg_app/device_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECG App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 255, 145, 145),
          secondary: const Color.fromARGB(255, 120, 148, 230),
          background: const Color.fromARGB(255, 32, 32, 32),
        ), // Color Scheme
      ),
      home: const MyHomePage(title: 'ECG Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool switch_pressed = false;

  void _switchClicked(bool value){
    setState(() {
      switch_pressed = false;
    });
  }

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
            const Text(
              'ECG READING',
              style: TextStyle(fontSize: 30),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 198, 198),
                borderRadius: BorderRadius.circular(2),
                shape: BoxShape.rectangle,
              ),
              width: 350,
              height: 150,
              child: Center(
                child: Text(
                  'No Device Found...', 
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Switch(
              activeColor: Colors.pink.shade50,
              inactiveTrackColor: Colors.grey,
              splashRadius: 25,
              value: switch_pressed,
              onChanged: _switchClicked,
            ),
            ElevatedButton(
            onPressed: () {
              print('Pairing Device!');
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DevicePairingPage(title: widget.title),
                ),
              );
            },
            child: Text('Pair with ECG Device', style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
