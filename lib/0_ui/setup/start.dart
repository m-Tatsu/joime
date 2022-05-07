import 'dart:math';

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
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.check),
                Text('Joimeの利用規約、プライバシーポリシー\nを読み同意します。'),
              ],
            ),
            TextButton(
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FirstProfile();
                    },
                    fullscreenDialog: false));
            },
              child: const Text(
                'ログイン',
                style: TextStyle(
                  fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.all(15.0),
            //   child: Text(
            //     'ログイン',
            //     style: TextStyle(
            //         fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

//モーダル画面
class FirstProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 75),
        child: Center(
            child: Column(
              children: [
                const Text(
                    'あなたのニックネームを教えてください。'
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFC8),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                        hintText: 'ニックネームを入力（２文字以上１２文字以内）',
                        hintStyle: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        )
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    '性別、誕生日、居住地を選択してください。'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 330,
                    child: CupertinoSegmentedControl(
                        children: const {
                          0: Text('男'),
                          1: Text('女'),
                          2: Text('その他'),
                        },
                        onValueChanged: (int index){
                          print('selected: $index');
                        },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFC8),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          hintText: '生年月日を入力',
                          hintStyle: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 25),
                //   child: SizedBox(
                //     width: 330,
                //     child: TextField(
                //       decoration: InputDecoration(
                //           filled: true,
                //           fillColor: Color(0xFFFFFFC8),
                //           enabledBorder: OutlineInputBorder(
                //               borderRadius: BorderRadius.all(Radius.circular(15))
                //           ),
                //           hintText: '年齢を表示する/しない',
                //           hintStyle: TextStyle(
                //             fontSize: 10,
                //             color: Colors.grey,
                //           )
                //       ),
                //     ),
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFC8),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          hintText: '居住地を選択',
                          hintStyle: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: SizedBox(
                    width: 100,height: 60,
                    child: TextButton(
                        // color: const Color(0xFFFFFFC8),
                        onPressed: (){
                          showDialog(
                              context: context, builder: (_) => const AlertDialog(
                                title:Text('Welcome To Joime',textAlign: TextAlign.center,),
                              )
                          );
                        },
                        child: const Text('完了',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}