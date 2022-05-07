import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joime/0_ui/setup/start.dart';

class Setup extends StatelessWidget{
  const Setup({Key? key}) : super(key: key);

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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                '電話番号ではじめる',
                style: TextStyle(
                    fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'LINEではじめる',
                style: TextStyle(
                    fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Appleでサインイン',
                style: TextStyle(
                    fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'SNS上には一切表示・投稿されません',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0,bottom: 15.0),
              child: Text('ー既にアカウントをお持ちの場合ー'),
            ),
            TextButton(onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Start(),)
                )
              }, child: const Text(
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