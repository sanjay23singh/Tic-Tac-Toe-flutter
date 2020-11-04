import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac/models/commonUser.dart';
import './widgets/secondPage.dart';

void main()=>  runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> 
{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: "Tic Tac Toe",
      debugShowCheckedModeBanner: false,
        
      home: ChangeNotifierProvider<CommonUser>(
        create:(context)=>CommonUser(),
        child:Scaffold(
        body: SafeArea(
          child: BodyApp()),
        ),
      ),     
    );
  }
}

