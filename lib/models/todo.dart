class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  late String title;
  late String id;
  late String description;

  Todo({
    this.description = '',
    this.title = '',
    required this.id,
  });
}
