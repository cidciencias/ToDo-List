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
}