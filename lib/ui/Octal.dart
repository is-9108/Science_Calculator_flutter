import 'package:flutter/material.dart';
import 'Result.dart';
import 'package:sciencecalculator/function/Calculator.dart';

class octal extends StatefulWidget{
  _octalState createState() => _octalState();
}

class _octalState extends State<octal>{

  double _num1 = 0;
  double _num2 = 0;
  String _resultNumber = '0';
  bool a = true;
  calculator calc = new calculator();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_resultNumber,style: TextStyle(fontSize: 30)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('変換'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => result()),
                  );
                });
              },
            ),
            RaisedButton(
              child: Text('AC'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _num1 = 0;
                  _num2 = 0;
                  _resultNumber = '0';
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
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '7';
                    }else{
                      _resultNumber = '7';
                      a = true;
                    }
                  }else{
                    _resultNumber = '7';
                  }
                  _num2 = double.parse(_resultNumber);
                });
              },
            ),
            RaisedButton(
              child: Text('÷'),
              color: Colors.blue,
              onPressed: (){
                _num1 = calc.div(_num1, _num2);
                _resultNumber = _num1.toString();
                a = false;
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
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '4';
                    }else{
                      _resultNumber = '4';
                      a = true;
                    }
                  }else{
                    _resultNumber = '4';
                  }
                  _num2 = double.parse(_resultNumber);
                });
              },
            ),
            RaisedButton(
              child: Text('5'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '5';
                    }else{
                      _resultNumber = '5';
                      a = true;
                    }
                  }else{
                    _resultNumber = '5';
                  }
                  _num2 = double.parse(_resultNumber);
                });
              },
            ),
            RaisedButton(
              child: Text('6'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '6';
                    }else{
                      _resultNumber = '6';
                      a = true;
                    }
                  }else{
                  _resultNumber = '6';
                  }
                  _num2 = double.parse(_resultNumber);
                });
              },
            ),
            RaisedButton(
              child: Text('×'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _num1 = calc.mul(_num1, _num2);
                  _resultNumber = _num1.toString();
                  a = false;
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
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '1';
                    }else{
                      _resultNumber = '1';
                      a = true;
                    }
                  }else{
                    _resultNumber = '1';
                  }
                  _num2 = double.parse(_resultNumber);
                });
              },
            ),
            RaisedButton(
              child: Text('2'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '2';
                    }else{
                      _resultNumber = '2';
                      a = true;
                    }
                  }else{
                    _resultNumber = '2';
                  }
                  _num2 = double.parse(_resultNumber);
                });
              },
            ),
            RaisedButton(
              child: Text('3'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '3';
                    }else{
                      _resultNumber = '3';
                      a = true;
                    }
                  }else{
                    _resultNumber = '3';
                  }
                  _num2 = double.parse(_resultNumber);
                });
              },
            ),
            RaisedButton(
              child: Text('-'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _num1 = calc.sub(_num1, _num2);
                  _resultNumber = _num1.toString();
                  a = false;
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
                  if(_resultNumber != '0'){
                    if(a){
                      _resultNumber += '0';
                    }else{
                      _resultNumber = '0';
                      a = true;
                    }
                  }else{
                    _resultNumber = '0';
                  }
                  _num2 = double.parse(_resultNumber);
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
                  _num1 = calc.add(_num1, _num2);
                  _resultNumber = _num1.toString();
                  a = false;
                });
              },
            )
          ],
        )
      ],
    );
  }
}