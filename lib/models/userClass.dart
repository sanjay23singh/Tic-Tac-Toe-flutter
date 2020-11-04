
import 'package:flutter/cupertino.dart';

class User 
{
  var arr;
  @required int userId;
   @required bool deal=false;
  @required Color colorId;
  bool won=false;

  void alterDeal()
  {
    deal=!deal;
  }
  void alter()
  {
    won=!won;
  }

  void increment(int i,j)
  {
    arr[i+3*j]++;
  }

  bool check()
  {
    int r1=arr[0]+arr[1]+arr[2];
    int r2=arr[3]+arr[4]+arr[5];
    int r3=arr[6]+arr[7]+arr[8];
    if(r1==3||r2==3||r3==3)
    return true;


    int c1=arr[0]+arr[3]+arr[6];
    int c2=arr[1]+arr[4]+arr[7];
    int c3=arr[2]+arr[5]+arr[8];
    if(c1==3||c2==3||c3==3)
    return true;

    int d1=arr[0]+arr[4]+arr[8];
    int d2=arr[2]+arr[4]+arr[6];
    if(d1==3||d2==3)
    return true;

    return false;
  }

  User({this.userId,this.colorId,this.deal})
  {
    arr=new List(9);
    for(int i=0;i<9;i++)
    arr[i]=0;
  }

}