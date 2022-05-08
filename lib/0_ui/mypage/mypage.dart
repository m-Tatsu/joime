import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joime/4_widget/list_view/mypage_list_view.dart';
import 'package:joime/5_const/mypage_const/mypage_const.dart';

enum Menu{
  account,
  privacy,
  website,
}

class Mypage extends StatelessWidget{
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: MypageConst.getTabItemCount(),
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'lib/3_res/1_icons/mainlogo.png',height: 60,width: 60,
          ),
          actions: <Widget>[
            PopupMenuButton(
              // onSelected: popupMenuSelected,
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<Menu>>[
                    PopupMenuItem(
                      child: ExpansionTile(
                        title: const Text('アカウント情報'),
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 24),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Text('退会'),
                                  Text('ログアウト'),
                                  Text('プロフィール編集'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      value: Menu.account
                    ),
                    const PopupMenuItem(
                        child: ExpansionTile(title: Text('利用規約')),
                        value: Menu.privacy
                    ),
                    const PopupMenuItem(
                        child: ExpansionTile(title: Text('Webサイト')),
                        value: Menu.website
                    ),
                  ],
            ),
            // PopupMenuButton<Choice>(
            //   onSelected: (Choice choice) {
            //     // Selected Action
            //   },
            //   itemBuilder: (BuildContext context) {
            //     return choices.map((Choice choice) {
            //       return PopupMenuItem<Choice>(
            //         value: choice,
            //         child: Text(choice.title),
            //       );
            //     }).toList();
            //   },
            // ),
          ],
        ),
        body:SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.account_circle,size: 80,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Icon(
                                  Icons.check_box
                                ),
                              ],
                            ),
                            const Text(
                              'フォロー 15 フォロワー 20'
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.mail_outline,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                      indicator: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                      ),
                      tabs: MypageTabListView.tabList()
                  ),
                  // TabBarView(
                  //       children: MypageTabListView.tabDataList(context),
                  //     ),
                ],
              ),
        ),
      ),
    );
  }
}

// void popupMenuSelected(Menu selectedMenu){
//   switch(selectedMenu){
//     case
//   }
// }
// class Choice{
//   const Choice({required this.title, required this.icon});
//   final String title;
//   final IconData icon;
// }
//
// const List<Choice> choices = <Choice>[
//   Choice(title: 'アカウント情報', icon: Icons.settings),
//   Choice(title: '利用規約', icon: Icons.my_location),
//   Choice(title: 'Webサイト', icon: Icons.my_location),
// ];