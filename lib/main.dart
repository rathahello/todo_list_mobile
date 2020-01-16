import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'todo_list.dart';

void main() => runApp(TodoList());
class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListTodo(),      
    );
  }
}