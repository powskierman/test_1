import 'package:flutter/material.dart';

const String _title = 'Ouvre Porte Garage';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: const [
          //     Text('Michel',
          //         style:
          //             TextStyle(height: 2, fontSize: 50, color: Colors.blue)),
          //     Text('Lorraine',
          //         style:
          //             TextStyle(height: 2, fontSize: 50, color: Colors.pink)),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.garage_outlined,
                size: 175,
                color: Colors.blue,
              ),
              Icon(
                Icons.garage_outlined,
                size: 175,
                color: Colors.blue,
                //  IconButton(onPressed: OpenDoor, icon: /Users/michel/StudioProjects/Test/test_1/Assets/garage-door-icon.png)
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.alarm_on,
                size: 150,
                color: Colors.blue,
              ),
              Transform.scale(
                scale: 2.5,
                child: Switch(
                  value: true,
                  onChanged: onChanged,
                  activeColor: Colors.red,
                ),
              ),

              //  IconButton(onPressed: OpenDoor, icon: /Users/michel/StudioProjects/Test/test_1/Assets/garage-door-icon.png)
            ],
          ),
        ],
      ),
    );
  }

  void onChanged(bool toto) {}
}

class OpenDoor {}
