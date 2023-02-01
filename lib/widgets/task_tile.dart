import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final void Function(bool?) toggleCheckbox;

  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.title,
      required this.toggleCheckbox});

  // void toggleCheckbox(bool? checkboxValue) {
  //   setState(() {
  //     isChecked = checkboxValue!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
