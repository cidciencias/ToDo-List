import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../models/task_model.dart';

class AppViewModel extends ChangeNotifier{
  List<Task> tasks = <Task> [];
  User user = User("John Doe");
}