import 'package:flutter/material.dart';

String healthStatus = 'assets/images/heart.png';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your app
  // lication.
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(),
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _ChartPage createState() => _ChartPage();
}

class _ChartPage extends State<MyHomePage> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Chart"),
      ),
      body: Column(
        children: <Widget>[
          const ExpansionTile(
            title: Text('Heath Status'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          const ExpansionTile(
            title: Text('DNA Test'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ExpansionTile(
            title: const Text('Contacts'),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.minimize_outlined
                  : Icons.keyboard_arrow_right,
            ),
            children: const <Widget>[
              ListTile(
                title: Text('Options'),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                ),
              ),
              ListTile(
                title: Text('Options'),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                ),
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          const ExpansionTile(
            title: Text('Medications'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: 'Camera',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Contact',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
