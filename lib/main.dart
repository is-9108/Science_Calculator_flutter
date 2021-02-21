
import 'package:flutter/material.dart';
import 'package:sciencecalculator/ui/ Binary.dart';
import 'package:sciencecalculator/ui/Octal.dart';
import 'package:sciencecalculator/ui/ Decimal.dart';
import 'package:sciencecalculator/ui/ Hexadecimal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '理系の電卓',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  static List<Widget> pageList=[
    binary(),
    octal(),
    decimal(),
    hexadecimal()
  ];

  void onItemTapped(int index){
    setState(() {
      pageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('理系の電卓'),
      ),
      body: Center(
        child: pageList.elementAt(pageIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined),
            label: 'two'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "eight"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
            label: "ten"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'sixteen'
          )
        ],
        currentIndex: pageIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue.shade200,
        onTap: onItemTapped,
      ),
    );
  }
}

