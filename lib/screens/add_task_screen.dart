import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  final Function addToList;
  AddTaskScreen({this.addToList});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff757575),
      child:Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular((20)),
          topRight:Radius.circular(20)
          )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                setState(() {
                  taskTitle=value;
                });
              },
            ),
            SizedBox(height: 20,),
            FlatButton(
              onPressed: (){
                Provider.of<TaskData>(context,listen:false).addToList(taskTitle);
                Navigator.pop(context);
              },
              child:Icon(Icons.add,color: Colors.white,),
              
              color: Colors.lightBlueAccent,
              
            )
          ]
        )

      ),
    );
  }
}