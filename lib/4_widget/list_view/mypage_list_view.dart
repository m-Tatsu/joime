import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joime/5_const/mypage_const/mypage_const.dart';

class MypageTabListView {
  static List<Tab> tabList() {
    List<Tab> list = [];
    for (var name in MypageConst.itemNameList) {
      list.add(
          Tab(
            child: SizedBox(
              height: 50,
              child: Text(
                  name
              ),
            ),
          )
      );
    }
    return list;
  }

  static List<Container> tabDataList(context) {
    List<Container> list = [];
    MypageConst.itemValList.asMap().forEach((index, varList) {
      list.add(
          Container(
            width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: varList.length,
                itemBuilder: (BuildContext context, int itemIndex){
                  return SizedBox(height: 50,
                    child: Text(varList[itemIndex],style: Theme.of(context).textTheme.bodyText1,),
                  );
                },
              ),
          )
      );
    },
    );
    return list;
  }
}