import 'package:flutter/cupertino.dart';
import 'package:task5/task.dart';

class provider extends ChangeNotifier{
   List<Task> tasks=[
    Task(name:'Flutter Task'),
    Task(name:'Study linear'),
    Task(name:'Go to club'),
  ];
  void addtasks(String newtask){
   final task=Task(name:newtask);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

}