
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navdrawer extends StatelessWidget{
  final padding=EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
backgroundColor: Color.fromRGBO(67, 37, 95, 1),
      child:Column(
        children: [SizedBox(height: 100,width: 100,),Row(
        children: [ SizedBox(width: 60,)
          , CircleAvatar(
            backgroundImage: NetworkImage("https://th.bing.com/th/id/R.e85b1a35bebc77df8ac54e97644b949a?rik=osLjpfpsbuJ8cg&pid=ImgRaw&r=0"),
            radius: 60,)
          ,]),Row(children: [SizedBox(height: 100,width: 70,),Text('Basma',style:TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold)),
        ],),
        Row(children: [SizedBox(height: 50,width: 70,) ,Icon(Icons.bookmark_border,size: 35,color: Colors.grey,) ,SizedBox(width: 15,),Text("Templates",style:TextStyle(color: Colors.white54,fontSize: 20))])
          ,Row(children: [SizedBox(height: 50,width: 70,) ,Icon(Icons.widgets_outlined,size: 35,color: Colors.grey,) ,SizedBox(width: 15,),Text("Categories",style:TextStyle(color: Colors.white54,fontSize: 20))])
      ,Row(children: [SizedBox(height: 50,width: 70,) ,Icon(Icons.pie_chart_outline,size: 35,color: Colors.grey,),SizedBox(width: 15,),Text("Analytics",style:TextStyle(color: Colors.white54,fontSize: 20))]),
        Row(children: [SizedBox(height: 50,width: 70,) ,Icon(Icons.settings_outlined,size: 35,color: Colors.grey,),SizedBox(width: 15,),Text("Settings",style:TextStyle(color: Colors.white54,fontSize: 20),)]),
        Row(children: [SizedBox(height: 200,width: 70,),Text('Good',style: TextStyle(fontSize: 20,color: Colors.grey),)],),
          Row(children: [SizedBox(height: 10,width: 70,),Text('Consistency',style: TextStyle(fontSize: 30,color: Colors.white54
          ),)],)])
    );


  }

}