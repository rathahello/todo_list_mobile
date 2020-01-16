import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ListTodo());
class ListTodo extends StatefulWidget {
  @override
  _ListTodoState createState() => _ListTodoState();
}

class _ListTodoState extends State<ListTodo> {
Map <String, bool> todos = {
  "JS":false,
  "PHP":false,
  "MVC":false,
  "JAVA":false,
};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: ListView(
        children: todos.keys.map((String key) {
            return CheckboxListTile(
              title: Text(key),
              value: todos[key],
              onChanged: (bool value){
                setState(() {
                  todos[key] = value;
                });
              }
            );
        }).toList(),
      ),
    );
  }
}