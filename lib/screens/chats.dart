import 'package:flutter/material.dart';

class Chats extends StatefulWidget{
  @override
  State<Chats> createState() => _ChatsState();
}
class _ChatsState extends State<Chats>{
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
                        Text("Select chats ",style:
                          TextStyle(color: Colors.white),),
                        Icon((Icons.check_circle_outline_rounded),color: Colors.white,)
                        
                      ],
                    )

                )
              ],

        ),
        // leading:IconButton(onPressed: (){},
        //   icon:Icon(Icons.menu) ,iconSize:30,color: Colors.white, ),
        actions:[
          Row(
            children: [
      IconButton(onPressed: (){},
      icon:Icon(Icons.search_outlined) ,color: Colors.white,iconSize: 30,),
    IconButton(onPressed: (){},
    icon:Icon(Icons.camera_alt) ,color: Colors.white,iconSize: 30,),
    
    CircleAvatar(
      radius: 20,
      backgroundColor: Colors.green,
      child: Center(
        child: IconButton(onPressed: (){},
        icon:Icon(Icons.add) ,color: Colors.black,),
      ),
    ),
            ],
          ),
        ],
        ),
      // drawer: Drawer(
      //     child: ListView(
      //       children: [
      //         UserAccountsDrawerHeader(
      //       currentAccountPicture: CircleAvatar(
      //         radius: 100,
      //         backgroundImage: AssetImage('assets/ai.png'),
      //       ),
      //           decoration: BoxDecoration(
      //             color: Colors.grey [700],
      //           ),
      //             accountName:Text('Tamoor Ali',),
      //             accountEmail: Text('Abc@gmail.com'),),
      //         ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text("Selected Chats"),
      //           onTap: (){},
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.logout_outlined),
      //           title: Text("Logout"),
      //           onTap: (){},
      //         ),
      //       ],
      //     )
      //     ,
      // ),
      body:Column(
        children: [
          // CustomScrollView(
          //   slivers: [
          //     SliverAppBar(
          //       backgroundColor: Colors.blue,
          //       title: Text('Chats',style: TextStyle(
          //           fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white
          //       ),),
          //       centerTitle: true,
          //       floating: true,
          //       pinned: true,
          //       expandedHeight: 50.0,
          //     ),
          //   ],
          // ),
          Align(
            alignment: Alignment.topLeft,
            child:Text('Chats',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30,color: Colors.white),),
          ),

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
                      subtitle: Text(index % 2 ==0? 'Hello I am Tamoor': 'Hello I am Sikander'),
                      trailing:Text('1:10 Am',style: TextStyle(color: Colors.white)),
                    );
                  }
                  else if (index >3 && index < 7){
                    return  ListTile(
                      leading: CircleAvatar(
                          backgroundColor:Colors.grey,
                          backgroundImage:AssetImage('assets/ai2.png')
                      ),
                      title: Text(index % 2 ==0 ? 'Ali':'Abdullah',style: TextStyle(color: Colors.white ),),
                      subtitle: Text(index % 2 ==0? 'Hello I am Ali': 'Hello I am Abdullah'),
                      trailing:Text('1h ago',style: TextStyle(color: Colors.white)),
                    );
                  }
                  else {
                    return  ListTile(
                      leading: CircleAvatar(
                          backgroundColor:Colors.grey,
                          backgroundImage:AssetImage('assets/ai3.png')
                      ),
                      title: Text(index % 2 ==0 ? 'Shah':'Sana',style: TextStyle(color: Colors.white ),),
                      subtitle: Text(index % 2 ==0? 'Hello I am Shah': 'Hello I am Sana'),
                      trailing:Text('Yesterday',style: TextStyle(color: Colors.white)),
                    );

                  }

                }

            ),
          )
        ],
      ),
    );
  }
}