import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckbox;
  final Function deleteTask;
  TaskTile({this.isChecked,this.taskTitle,this.toggleCheckbox,this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
          onDoubleTap: (){
            deleteTask();
          },
          child: Text(taskTitle,
          style:TextStyle(
            decoration: isChecked?TextDecoration.lineThrough:TextDecoration.none
          )
        ),
      ),
      trailing: Checkbox(
        onChanged: (value){
         toggleCheckbox();
        },
        activeColor: Colors.lightBlueAccent,
        value:isChecked,
      )
    );
  }
}


