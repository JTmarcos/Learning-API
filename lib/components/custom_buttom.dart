import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(255, 146, 140, 140);
            }
            return Colors.green;
          })),
      child: Text(title,style: const TextStyle(fontSize: 20),),
    );
  }
}
