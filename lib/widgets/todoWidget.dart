import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/models/todo.dart';
import 'package:to_do_list_app/provider/todos.dart';

import '../utils.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({required this.todo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      todo.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          fontSize: 22),
                    ),
                    if (todo.description.isNotEmpty)
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Text(
                          todo.description,
                          style: TextStyle(fontSize: 20, height: 1.5),
                        ),
                      )
                  ])),
              SizedBox(
                width: 8,
              ),
              ElevatedButton(
                onPressed: () =>deleteTodo(context,todo),
                child: Text(
                  'Task Completed',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize:10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

void deleteTodo(BuildContext context, Todo todo) {
  final provider = Provider.of<TodosProvider>(context, listen: false);
  provider.removeTodo(todo);

  Utils.showSnackBar(context, 'Task completed and deleted');
}
}
