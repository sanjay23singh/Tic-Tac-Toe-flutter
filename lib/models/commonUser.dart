import 'package:flutter/cupertino.dart';

class CommonUser with ChangeNotifier
{
  bool won=false;
  void  faltuFxn()
  {
      won=!won;
      notifyListeners();
  }
  int userCount=0;
  void userCountIncrement()
  {
    userCount++;
    notifyListeners();
  }
}