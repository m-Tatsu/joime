class MypageConst{
  static const itemNameList= [
    "イベント","ゴルフ","ComingSoon!"
  ];

  static const itemValList = [
    ["event1","event2","event3"],
    ["event4","event5","event6"],
    ["event7","event8","event9"],
  ];

  static String getTabItemName(int ind){
    return itemNameList[ind];
  }
  static List getTabItemList(int ind){
    return itemValList[ind];
  }
  static int getTabItemCount(){
    return itemNameList.length;
  }
}