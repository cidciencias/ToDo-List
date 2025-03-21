import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../models/task_model.dart';

class AppViewModel extends ChangeNotifier{
  List<Task> tasks = <Task> [];
  User user = User("John Doe");

  Color colorlvl1 = Colors.grey.shade50;
  Color colorlvl2 = Colors.grey.shade200;
  Color colorlvl3 = Colors.grey.shade800;
  Color colorlvl4 = Colors.grey.shade900;

  int get numTasks => tasks.length;

  void addTask(Task newTask){
    tasks.add(newTask);
    notifyListeners();
  }

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context, 
      builder: ((context){
        return bottomSheetView;
      }));
  }
}