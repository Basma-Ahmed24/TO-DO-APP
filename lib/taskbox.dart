
import 'package:flutter/material.dart';

class Taskbox extends StatelessWidget{
  bool isChecked;
   String taskTitle;
   Function(bool?)? checkboxCallback;
   Function() ?deleteTaskCallback;
  Taskbox({required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.deleteTaskCallback,});

  Widget build(BuildContext context) {
   return ListTile(
     title: Text(

       taskTitle,
         style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null,fontSize: 20,color:Color.fromRGBO(67, 37, 95, 1),fontWeight: FontWeight.w500),
     ),
     trailing: SizedBox(width: 100
     ,child: Row(
         children: [IconButton(
           onPressed: deleteTaskCallback,icon: const Icon(Icons.delete_outline,color:Colors.deepPurple),),
   Checkbox(
       tristate: true,
shape: CircleBorder(),
    hoverColor: Colors.deepPurple,
    focusColor:Colors.deepPurple ,
    checkColor: Colors.white,
    activeColor: Colors.deepPurple,

    value: isChecked,
   onChanged: checkboxCallback,


   ),]),)
   );

  }

}
