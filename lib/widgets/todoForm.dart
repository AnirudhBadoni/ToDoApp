import 'package:flutter/material.dart';

class TodoForm extends StatelessWidget {
  late final String title;
  late final String description;
  late final ValueChanged<String> onChangeTitle;
  late final ValueChanged<String> onChagedDescription;
  late final VoidCallback onSavedTodo;

  TodoForm(
      {this.title = '',
      this.description = '',
      required this.onChangeTitle,
      required this.onChagedDescription,
      required this.onSavedTodo});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTitle(),
          buildDesciption(),
          SizedBox(
            height: 10,
          ),
          buildButton(),
        ],
      ),
    );
  }

  Widget buildTitle() => TextFormField(
        initialValue: title,
        maxLines: 1,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
        onChanged: onChangeTitle,
        validator: (title) {
          if (title!.isEmpty) {
            return 'The title cannot be empty';
          }
          return null;
        },
      );

  buildDesciption() => TextFormField(
        initialValue: description,
        maxLines: 3,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Description',
        ),
        onChanged: onChagedDescription,
      );

  buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: onSavedTodo,
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            )),
      );
}
