import 'package:ecg_app/device_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ECG READING',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 90),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Transform.scale(scale: 1.5,
                    child: Switch(
                      activeColor: Theme.of(context).colorScheme.primary,
                      inactiveTrackColor: Colors.grey,
                      splashRadius: 20,
                      value: switch_pressed,
                      onChanged: (bool value){
                        setState(() {
                          switch_pressed = value;
                        });
                      },
                    ),
                  ),
                  const Text(
                    '  Record ECG Data',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                   ),
                ], 
              ),
            ),
            const SizedBox(height: 50),
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
            const SizedBox(height: 20),
            Icon(
              FontAwesomeIcons.heartPulse,
              size: 50,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
