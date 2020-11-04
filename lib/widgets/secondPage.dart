import 'package:provider/provider.dart';
import '../models/commonUser.dart';
import 'boardPage.dart';
import "package:flutter/material.dart";
import '../models/userClass.dart';

class BodyApp extends StatefulWidget {
  @override
  _BodyAppState createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  User user1 = User(colorId: Colors.red, userId: 1,deal: true);
  User user2 = User(colorId: Colors.blue, userId: 2,deal: false);

  Widget build(BuildContext context) {
    return Consumer<CommonUser>(
      builder: (context, commonUser, child) => Container(
        child: Container(
          color: Color(0x3364b5f6),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //
              //Player 2 text Container
              //
              Container(
                height: 70,
                padding: EdgeInsets.only(top:5),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Text(
                      (user2.won) ? "Player 2 wins!" : "Player 2",
                      style: TextStyle(fontSize: 50,fontFamily: 'Geo',fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //
              //Player 2 arrow Container
              //
              Container(
                height: 60,
                child: Center(
                  child: user2.deal && !user1.won
                      ? Icon(
                          Icons.change_history,
                          color: user2.colorId,
                          size: 60,
                        )
                      : Container(),
                ),
              ),

              //
              //The Body Container
              //
              Container(
                height: 360,
                width: 360,
                child: Board(user1, user2),
              ),

              //
              //player 1 arrow Container
              //
              Container(
                height: 60,
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: user1.deal&& !user2.won
                        ? Icon(
                            Icons.change_history,
                            color: user1.colorId,
                            size: 60,
                          )
                        : Container(),
                  ),
                ),
              ),
              //
              //Player 1 text container
              //
              Container(
                padding: EdgeInsets.only(bottom:5),
                height: 70,
                child: Center(
                  child: Text(
                    user1.won ? "Player 1 wins!" : "Player 1",
                    style: TextStyle(fontSize: 50,fontFamily: 'Geo'),
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
