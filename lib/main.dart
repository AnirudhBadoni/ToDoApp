import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/provider/todos.dart';

import 'pages/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>TodosProvider(),
      child: MaterialApp(
        title: title,
        theme: ThemeData(
            primarySwatch: Colors.amber, scaffoldBackgroundColor: Colors.white),
        home: HomePage(),
      ),
    );
  }
}
