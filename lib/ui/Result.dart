import 'package:flutter/material.dart';

class resultView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Result view',
      home: result(),
    );
  }
}

class result extends StatefulWidget{
  _resultState createState() => _resultState();
}

class _resultState extends State<result>{
  String binaryResult = '0';
  String octalResult = '0';
  String decimalResult = '0';
  String hexadecimalResult = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('理系の電卓'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('2進数',style: TextStyle(fontSize: 40)),
            Text(binaryResult,style: TextStyle(fontSize: 40)),
            Text('8進数',style: TextStyle(fontSize: 40)),
            Text(octalResult,style: TextStyle(fontSize: 40)),
            Text('10進数',style: TextStyle(fontSize: 40)),
            Text(decimalResult,style: TextStyle(fontSize: 40)),
            Text('16進数',style: TextStyle(fontSize: 40)),
            Text(hexadecimalResult,style: TextStyle(fontSize: 40))
          ],
        )
      ),
    );
  }
}