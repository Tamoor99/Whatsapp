import 'package:flutter/material.dart';

class Updates extends StatefulWidget{
  @override
  State<Updates> createState() => _UpdateState();
}
class _UpdateState extends State<Updates>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: PopupMenuButton(
            iconColor: Colors.white,
            color: Colors.black,
            itemBuilder: (context)=>[
              PopupMenuItem(
                child: Row(
                  children: [
                        Text('Create channel',style: TextStyle(
                          color: Colors.white,
                        ),),
                        SizedBox(width: 20,),
                        Icon(Icons.change_circle_outlined,color: Colors.white,)
                  ],
                )
              ),
              PopupMenuItem(
                  child:Row(
                    children: [
                      Row(
                        children: [
                          Text('Status privacy',style: TextStyle(
                            color: Colors.white,
                          ),),
                          SizedBox(width: 25,),
                          Icon(Icons.lock_outline,color: Colors.white,)
                        ],
                      )
                    ],
                  )
              )
            ],

          ),
      ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Updates',style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white,
              ),),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Status',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
              fontSize: 18),),
            ),
            SizedBox(height:10,),
            ListTile(
              title: Text('My status',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
              color: Colors.white),),
              subtitle: Text('Add to my status'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/n7.png'),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
              onTap: (){},
              trailing:Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed:(){},
                      icon: Icon(Icons.camera_alt,color: Colors.white,)),
                  SizedBox(width: 20.0,),
                  IconButton(onPressed:(){},
                      icon: Icon(Icons.edit,color: Colors.white,))
                ],
              ) ,
            ),
            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 40,
                  itemBuilder: (context,index){
                  if (index <= 2){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Colors.green,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("n2.png"),

                        ),
                      ),
                      onTap: (){},
                      title: Text('Mubashir ',style: TextStyle(fontSize: 15,
                          color: Colors.white),),
                      subtitle: Text('7m ago'),
                    );
                  }
                  else if (index > 2 && index <= 4){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Colors.green,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("n3.png"),

                        ),
                      ),
                      onTap: (){},
                      title: Text('Hassan ',style: TextStyle(fontSize: 15,
                          color: Colors.white),),
                      subtitle: Text('15m ago'),
                    );
                  }
                  else if(index >4 && index <=6) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Colors.green,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("n4.png"),

                        ),
                      ),
                      onTap: (){},
                      title: Text('Ahmed ',style: TextStyle(fontSize: 15,
                          color: Colors.white),),
                      subtitle: Text('1h ago'),
                    );
                  }
                  else{
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Colors.green,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("n5.png"),

                        ),
                      ),
                      onTap: (){},
                      title: Text('Usama ',style: TextStyle(fontSize: 15,
                          color: Colors.white),),
                      subtitle: Text('2h ago'),
                    );
                  }

              }
              ),
            ),
            ]
        ),
      ),
    );
  }
}