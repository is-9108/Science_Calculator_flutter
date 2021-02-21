import 'package:flutter/material.dart';


class octal extends StatefulWidget{
  _octalState createState() => _octalState();
}

class _octalState extends State<octal>{

  int _result = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$_result'),
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
                setState(() {
                  print('mul');
                });
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
                  _result = 6;
                });
              },
            ),
            RaisedButton(
              child: Text('-'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  print('sub');
                });
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
                setState(() {
                  print('=');
                });
              },
            ),
            RaisedButton(
              child: Text('+'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  print('add');
                });
              },
            )
          ],
        )
      ],
    );
  }
}