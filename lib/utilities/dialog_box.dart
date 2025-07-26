import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todo/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffe9ecef),
      content: Container(
        height: 120,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // user ip
            TextField(
              controller: controller,
              cursorColor: Color(0xff343a40),
              decoration: InputDecoration(
                hintText: "Add a new task",
                hintStyle: TextStyle(color: Color(0xffadb5bd)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff6c757d),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xffadb5bd), width: 2),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(text: "save", onPressed: onSave),
                MyButton(text: "cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}