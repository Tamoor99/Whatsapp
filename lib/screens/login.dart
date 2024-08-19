import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class login extends StatefulWidget{
  @override
  State<login> createState()=> _loginState();
}
class _loginState extends State<login>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(
                    child: Image(image:AssetImage('assets/whatsapp.png',),
                    ),
                  ),
              SizedBox(height:15 ,),
              // Align(alignment: Alignment.center,
              //     child: Text(' Whatsapp Clone',style: TextStyle(color: Colors.white,
              //       fontSize: 24,fontFamily: 'Pacifico',fontWeight: FontWeight.w600),)),
              Align(
                alignment: Alignment.center,
                child: AnimatedTextKit(animatedTexts: [
                  WavyAnimatedText(' Whatsapp Clone',textStyle: TextStyle(color: Colors.white,
                      fontSize: 24,fontFamily: 'Pacifico',fontWeight: FontWeight.w600,),speed: Duration(milliseconds: 500),)
                ],
                totalRepeatCount: 10,),
              ),
              SizedBox(height: 100,),
              Padding(padding: EdgeInsets.only(left: 25,right: 25),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration:  InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.squarePhone,color: Colors.white54,
                        size: 30,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20.0) ,
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    fillColor: Colors.white,
                    labelText:'Number',
                    labelStyle:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),)
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding:EdgeInsets.only(left: 25,right: 25),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration:  InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.lock,color: Colors.white54,
                        size: 30,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(20.0) ,
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      fillColor: Colors.white,
                      labelText:'Password',
                      labelStyle:TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),)
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(minimumSize:Size(150, 50),
                  backgroundColor: Colors.white60),
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}