import 'package:flutter/cupertino.dart';
import 'package:to_do_list_app/models/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      id: DateTime.now().toString(),
      title: 'Buy Food 😋',
      description: '''- Eggs
- Milk
- Bread
- Water''',
    ),
    Todo(
      id: DateTime.now().toString(),
      title: 'Plan family trip to Norway',
      description: '''- Rent some hotels
- Rent a car
- Pack suitcase''',
    ),
    Todo(
      id: DateTime.now().toString(),
      title: 'Walk the Dog 🐕',
    ),
    Todo(
      id: DateTime.now().toString(),
      title: 'Plan Jacobs birthday party 🎉🥳',
    ),

  ];

  List<Todo> get todos => _todos;

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void removeTodo(Todo todo){
    _todos.remove(todo);
    notifyListeners();
  }
}
