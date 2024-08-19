import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp1/screens/missedcalls.dart';

class Calls extends StatefulWidget{
  @override
  State<Calls> createState() => _CallsState();
}
class _CallsState extends State<Calls>{
  int _selectedindex=0;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.more_horiz,color: Colors.white,),
          itemBuilder: (context,)=> [
            PopupMenuItem(
                value:1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Edit  ",style:
                    TextStyle(color: Colors.white),),
                    Icon((FontAwesomeIcons.edit),color: Colors.white,size:15,)

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
            verticalDirection: VerticalDirection.down,
            fillColor: Colors.grey[700],
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
          Padding(padding:
            EdgeInsets.all(10),
            child: TextFormField(onTap: (){},
              style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              prefixIcon: Icon(Icons.search_outlined,size: 20,color: Colors.white,),
              focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(20.0) ,
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child:Text('Favourites',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,color: Colors.white),),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.center,
            child:Container(
              height: 35,
              width: 1450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[900],
                shape: BoxShape.rectangle,
              ),
              child: Align(
                alignment: Alignment(-0.98,0),
                child: TextButton(onPressed: (){},
                    child: Text('Add to Favourites',style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20,color: Colors.green[600]),),)
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Align(
            alignment: Alignment.topLeft,
            child:Text('Recent',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,color: Colors.white),),
          ),
          SizedBox(height: 5.0,),
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
                        title: Text(index % 2 ==0 ? 'Tamoor ':'Sikander',style: TextStyle(color: Colors.white ),),
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
                        subtitle:Row(children: [Icon(Icons.call_rounded,color: Colors.white,),
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
                        title: Text(index % 2 ==0 ? 'Shah':'Sana',style: TextStyle(color: Colors.white ),),
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