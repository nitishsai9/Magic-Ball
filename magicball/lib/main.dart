import 'package:flutter/material.dart';
import 'dart:math';
void main()
{
runApp(
  MaterialApp(
    home: SafeArea(
   child: Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text('Magic Ball',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),
        ),
        backgroundColor: Colors.white,
      ),
      body: MagicBody(),
    ),
    ),
  ),
);
}
class MagicBody extends StatefulWidget {
  @override
  _MagicBodyState createState() => _MagicBodyState();
}

class _MagicBodyState extends State<MagicBody> {
  int clicked=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              splashColor: Colors.white10,
              onPressed: (){
              setState(() {
               clicked= Random().nextInt(5)+1; 
              });
              },
              child: Image.asset('image/$clicked.png'),
              ),
          ),
        ],

        
      ),
    );
  }
}