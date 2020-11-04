import 'singleCard.dart';
import '../models/userClass.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  final User user1;
  final User user2;
  //constructor
  Board(this.user1,this.user2);

  @override
  _BoardState createState() => _BoardState(user1,user2);
}

class _BoardState extends State<Board> {
  User user1;
  User user2;
  //constructor
  _BoardState(this.user1,this.user2);

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SingleCard(user1,user2,0,0),
            SingleCard(user1,user2,0,1),
            SingleCard(user1,user2,0,2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SingleCard(user1,user2,1,0),
            SingleCard(user1,user2,1,1),
            SingleCard(user1,user2,1,2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
              SingleCard(user1,user2,2,0),
            SingleCard(user1,user2,2,1),
            SingleCard(user1,user2,2,2),
            ],
          ),
        ],     
    );
  }
}