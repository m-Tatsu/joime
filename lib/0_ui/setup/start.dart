import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget{
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,height: 250,
              child: Image.asset('lib/3_res/1_icons/mainlogo.png',
                fit: BoxFit.contain,),
            ),
            const Text('check'),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'ログイン',
                style: TextStyle(
                    fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}