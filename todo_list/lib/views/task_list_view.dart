import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/view_models/app_view_model.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child){
      return Container(
        decoration: BoxDecoration(
          color: viewModel.colorlvl2,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView.separated( 
            separatorBuilder: (context, index){
              return SizedBox(height: 15,);
            }, 
            itemCount: viewModel.numTasks,
            itemBuilder: (context, index){
              return Container(height: 50, width: 50, color: Colors.blue,);
            }),
      );
    });
  }
}