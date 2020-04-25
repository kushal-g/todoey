import 'package:flutter/material.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('pressed');
            showModalBottomSheet(
              context: context, 
              builder: (context) =>AddTaskScreen()
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child:Icon(Icons.add)
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.only(
                top:60,
                left:30,
                right:30,
                bottom:30
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size:30,
                      color:Colors.lightBlueAccent
                    )
                  ),
                  SizedBox(height:10),
                  Text(
                    'todoey',
                    style:TextStyle(
                      color:Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700
                    )
                  ),
                  Text(
                    '12 Tasks',
                    style:TextStyle(
                      color:Colors.lightBlue[50],
                      fontSize: 18 
                    )
                  ),
                         ]
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular((20)),
                    topRight:Radius.circular(20)
                  )
                ),
                child:TasksList()
              ),
            )
          ],
        )
      );
  }
}

