import 'package:provider/provider.dart';

import '../models/commonUser.dart';
import '../models/userClass.dart';
import 'package:flutter/material.dart';

class SingleCard extends StatefulWidget {
  final User user1;
  final User user2;
  final int row;
  final int col;

  SingleCard(this.user1, this.user2, this.row, this.col);
  @override
  _SingleCardState createState() =>
      _SingleCardState(user1, user2, row, col);
}

class _SingleCardState extends State<SingleCard> {
  final User user1;
  final User user2;
  final int row;
  final int col;

  _SingleCardState(this.user1, this.user2 ,this.row, this.col);

  //inner Variable
  Color boxColor = Color(0x1164b5f6);
  int boxCount = 0;
  Icon boxIcon;
  @override
  Widget build(BuildContext context) {

    final tiktik =Provider.of<CommonUser>(context);

    return Container(
        height: 110,
        width: 110,
        // color: Colors.black,
        child: Card(
          color: boxColor,
          child: GestureDetector(
            onTap: () {
              int val =tiktik.userCount % 2;
              User user=(val==0)?user1:user2;
              if (boxCount == 0 &&!user2.won&& !user1.won) {
              setState(() {
                
                  boxColor = user.colorId;
                  boxIcon = (val == 0)? (Icon(Icons.clear, size: 60)): (Icon(Icons.panorama_fish_eye,size: 60,));
                  boxCount++;
                  //for player Buttons
                  user1.alterDeal();
                  user2.alterDeal();
                  tiktik.userCountIncrement();

              },
              );
            user.increment(row, col);
            bool cout=user.check();
            if(cout)
            {
              user.alter();
              tiktik.faltuFxn();
            }
            // print( tiktik.won);  
            }
},
            child: boxIcon,
          ),
        ));
  }
}
