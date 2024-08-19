import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp1/screens/calls.dart';

class Missedcalls extends StatefulWidget{
  @override
  State<Missedcalls> createState()=> _MissedcallsState();
}
class _MissedcallsState extends State<Missedcalls>{
  int _selectedindex=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: PopupMenuButton(
          iconColor: Colors.white,
            icon: Icon(Icons.more_horiz),
          color: Colors.black,
          itemBuilder: (context) =>[
            PopupMenuItem(
              value: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("edit",style:
                    TextStyle(color: Colors.white,),),
                  Icon(FontAwesomeIcons.edit,size: 15.0,color: Colors.white,)
                ],
              )
            )
          ],
        ),
        actions:[
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 500),
            child: ToggleButtons (
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10),top: Radius.circular(10)),
              constraints:BoxConstraints(maxHeight:90,),
              selectedColor: Colors.grey[700],
              mouseCursor: MaterialStateMouseCursor.clickable,
              borderWidth:2.0,
              isSelected: [_selectedindex==0,_selectedindex==1],
              onPressed: (int index){
                setState(() {
                  _selectedindex=index;
                });
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calls()), // Navigate to Login screen
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Missedcalls()), // Navigate to Chats screen
                  );
                }
              },
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("All",style: TextStyle(color: Colors.white),),),
                Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Missed",style: TextStyle(color: Colors.white),),),
              ],
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Center(
                  child: IconButton(onPressed: (){},
                    icon:Icon(Icons.add) ,color: Colors.white,),
                ),
              ),
            ],
          ),
        ],
      ),
      body:Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child:Text('Calls',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30,color: Colors.white),),
          ),

          SizedBox(height: 10.0),
          Align(
            alignment: Alignment.topLeft,
            child:Text('Recents',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,color: Colors.white),),
          ),
          SizedBox(height: 5.0),
          Expanded(
            child: ListView.builder(
                itemCount:15,
                itemBuilder: (context,index){
                  if(index <=3){
                    return  ListTile(
                      leading: CircleAvatar(
                          backgroundColor:Colors.grey,
                          backgroundImage:AssetImage('assets/n6.png')
                      ),
                      title: Text(index % 2 ==0 ? 'Tamoor ':'Sikander',style: TextStyle(color: Colors.red ),),
                      subtitle:Row(children: [Icon(Icons.call_rounded,color: Colors.white,),
                        SizedBox(width: 5.0,),
                        Text("Outgoing")],),
                      trailing:Row(mainAxisSize: MainAxisSize.min, children: [Text('1:10 AM',style: TextStyle(color: Colors.white)),
                        SizedBox(width: 5.0,),
                        Icon(Icons.explore_rounded,color: Colors.white,)],),
                    );
                  }
                  else if (index >3 && index < 7){
                    return  ListTile(
                      leading: CircleAvatar(
                          backgroundColor:Colors.grey,
                          backgroundImage:AssetImage('assets/ai2.png')
                      ),
                      title: Text(index % 2 ==0 ? 'Ali':'Abdullah',style: TextStyle(color: Colors.red ),),
                      subtitle:Row(children: [Icon(Icons.video_call_rounded,color: Colors.white,),
                        SizedBox(width: 5.0,),
                        Text("Incoming")],),
                      trailing:Row(mainAxisSize: MainAxisSize.min, children: [Text('3:12 AM',style: TextStyle(color: Colors.white)),
                        SizedBox(width: 5.0,),
                        Icon(Icons.explore_rounded,color: Colors.white,)],),
                    );
                  }
                  else {
                    return  ListTile(
                      leading: CircleAvatar(
                          backgroundColor:Colors.grey,
                          backgroundImage:AssetImage('assets/ai3.png')
                      ),
                      title: Text(index % 2 ==0 ? 'Shah':'Sana',style: TextStyle(color: Colors.red ),),
                      subtitle:Row(children: [Icon(Icons.call_rounded,color: Colors.white,),
                        SizedBox(width: 5.0,),
                        Text("Outgoing")],),
                      trailing:Row(mainAxisSize: MainAxisSize.min, children: [Text('4:00 PM',style: TextStyle(color: Colors.white)),
                        SizedBox(width: 5.0,),
                        Icon(Icons.explore_rounded,color: Colors.white,)],),
                    );

                  }
                }
            ),
          ),

        ],
      ),
    );
  }
}