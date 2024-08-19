import 'package:flutter/material.dart';
import 'package:whatsapp1/screens/login.dart';
import 'package:whatsapp1/screens/Chats.dart';
import 'package:whatsapp1/screens/calls.dart';
import 'package:whatsapp1/screens/updates.dart';
void main() => runApp(MyApp());
class  MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build (BuildContext context){
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Calls(),
    );
  }
}