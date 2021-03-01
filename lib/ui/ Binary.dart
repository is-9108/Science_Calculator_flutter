import 'package:flutter/material.dart';
import 'Result.dart';
import 'package:sciencecalculator/function/Calculator.dart';

class binary extends StatefulWidget{
  _binaryState createState() => _binaryState();
}

class _binaryState extends State<binary>{

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
              child: Text('+'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _num1 = calc.add(_num1, _num2);
                  _resultNumber = _num1.toString();
                  a = false;
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
            ),
            RaisedButton(
              child: Text('÷'),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _num1 = calc.div(_num1, _num2);
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
              child: Text('='),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  print('=');
                });
              },
            )
          ],
        )
      ],
    );
  }
}