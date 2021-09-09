import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/addTodoDialog.dart';
import 'package:to_do_list_app/widgets/todoList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        actions: <Widget>[
          IconButton(
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return AddTodoDialog();
                },
                barrierDismissible: true),
            icon: Icon(
              Icons.add,
              size: 30,
            ),
          )
        ],
      ),
      body: TodoList(),
    );
  }
}
