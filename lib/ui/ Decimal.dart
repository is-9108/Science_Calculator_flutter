import 'package:flutter/material.dart';


class decimal extends StatefulWidget{
  _decimalState createState() => _decimalState();
}

class _decimalState extends State<decimal>{

  int _result = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$_result',style: TextStyle(fontSize: 30)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('変換'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 0;
                });
              },
            ),
            RaisedButton(
              child: Text('AC'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 0;
                });
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('7'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 7;
                });
              },
            ),
            RaisedButton(
              child: Text('8'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 8;
                });
              },
            ),
            RaisedButton(
              child: Text('9'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 9;
                });
              },
            ),
            RaisedButton(
              child: Text('÷'),
              color: Colors.blue,
              onPressed: (){
                print('div');
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('4'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 4;
                });
              },
            ),
            RaisedButton(
              child: Text('5'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 5;
                });
              },
            ),
            RaisedButton(
              child: Text('6'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 6;
                });
              },
            ),
            RaisedButton(
              child: Text('×'),
              color: Colors.blue,
              onPressed: (){
                print('mul');
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('1'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 1;
                });
              },
            ),
            RaisedButton(
              child: Text('2'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 2;
                });
              },
            ),
            RaisedButton(
              child: Text('3'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 3;
                });
              },
            ),
            RaisedButton(
              child: Text('-'),
              color: Colors.blue,
              onPressed: (){
                print('sub');
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('0'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _result = 0;
                });
              },
            ),
            RaisedButton(
              child: Text('='),
              color: Colors.blue,
              onPressed: (){
                print('=');
              },
            ),
            RaisedButton(
              child: Text('+'),
              color: Colors.blue,
              onPressed: (){
                print('add');
              },
            ),
          ],
        ),
      ],
    );
  }
}