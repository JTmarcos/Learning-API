import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.title,
       this.id,
       this.body,
       this.userId});

  final String title;
  final int? id;
  final String? body;
  final String? userId;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(title),);
  }
}
