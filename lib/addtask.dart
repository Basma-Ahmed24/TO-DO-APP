import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/provider.dart';

class addtask extends StatelessWidget{


  String? newtask;

  @override
  Widget build(BuildContext context) {

  return Column(

    mainAxisSize: MainAxisSize.min,
    children: [Text('Add Task',textAlign: TextAlign.center,style: TextStyle(
      fontSize: 30,color:Colors.deepPurple,
    )
      ,),
    TextField(
      autofocus: true,
      textAlign: TextAlign.center,
     style:TextStyle(fontSize: 20,color:Color.fromRGBO(67, 37, 95, 1)),
      onChanged: (newText){
        newtask=newText;
      },
    ), ElevatedButton(onPressed: () { Provider.of<provider>(context,listen: false).addtasks(newtask!);
      Navigator.pop(context); },
    child:  const Text(
    'Add',
    style: TextStyle(
    color: Colors.white,
fontSize: 20
    ),),style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.fromLTRB( 100, 15, 100, 15)),backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),),],
  );
  }

}