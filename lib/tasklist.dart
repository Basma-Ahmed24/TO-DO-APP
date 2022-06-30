import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/provider.dart';
import 'package:task5/taskbox.dart';

class tasklist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Consumer <provider>(
     builder:(context,provider,child){
       return ListView.builder(
itemBuilder: (context,index){
 final task=provider.tasks[index];
 return Taskbox(
   taskTitle: task.name,
   isChecked: task.isDone,
   checkboxCallback: (checkboxState) {
     provider.updateTask(task);
   },
   deleteTaskCallback: (){
     provider.deleteTask(task);
   },
 );

},
  itemCount: provider.tasks.length,     );
     }
   );
  }

}