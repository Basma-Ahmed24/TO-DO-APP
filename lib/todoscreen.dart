import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:task5/addtask.dart';
import 'package:task5/sidemenue.dart';
import 'package:task5/tasklist.dart';
import 'package:task5/provider.dart';
class todoscreen extends StatelessWidget{
var scaffoldkey=GlobalKey<ScaffoldState>();
  int btask=30;

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    key:scaffoldkey,
    drawer:  Navdrawer(

    ),


  body:
  Column( children :[  SafeArea(child: Row(children: [ IconButton(onPressed: ()=>scaffoldkey.currentState?.openDrawer() , icon: Icon(Icons.menu,size: 35,color: Colors.deepPurple,)),SizedBox(width: 250,height: 100,),Icon(Icons.search_sharp,color: Colors.deepPurple,size: 33,),SizedBox(width:15),
    Icon(Icons.notifications_none_outlined,color: Colors.deepPurple,size: 33),

 ] ),),
   Row( children: [SizedBox(width: 25,),Text("What’s up,Basma!",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40,color: Color.fromRGBO(67, 37, 95, 1)),),
   ],) ,Row(children:[SizedBox(height: 70,width: 30,),Text("CATEGORIES",style:TextStyle(color: Colors.black45,fontSize: 15,fontWeight: FontWeight.bold),)]),
  Row( children: [SizedBox(height:40,width: 25,),InkWell(onTap: (){},
  child: Container( width:200,height:90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white) ,child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [SizedBox(width:15,height: 10,) ,
    Text(
      '${Provider.of<provider>(context).tasks.length} Tasks' ,style: TextStyle(color: Colors.black45,fontSize: 15)),

     SizedBox(), Text("Personal",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      SizedBox(height: 7,),LinearPercentIndicator(
        percent: (Provider.of<provider>(context).tasks.length)/50,
        progressColor: Colors.deepPurple,
        lineHeight: 7)],
    ))),SizedBox(height:40,width: 16,),InkWell(onTap: (){},
    child: Container( width:170,height:90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white) ,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [SizedBox(width:17,height: 10,) ,Text("$btask Tasks",style: TextStyle(color: Colors.black45,fontSize: 15)),


    Text("Business",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
    ),SizedBox(height: 7,),LinearPercentIndicator(
    percent: btask/50,
   progressColor: Colors.pink,
lineHeight: 7,

    )],),
    ))]),

    Row(children: [ SizedBox(height: 60,width: 25,),Text("TODAY’S TASKS",style:TextStyle(color: Colors.black45,fontSize: 15,fontWeight: FontWeight.bold))],)
   , Expanded(
    child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
    ),
    ),
    child:  tasklist(),
    ),),],),
    floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.deepPurple,
    child: const Icon(Icons.add),
    onPressed: () { showDialog(
        context: context,
        builder: (context) =>  AlertDialog(
      content: addtask()));
    })
  );
}}
