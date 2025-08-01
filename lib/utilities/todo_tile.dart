import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Slidable(
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Color(0xff6c757d),
              borderRadius: BorderRadius.circular(12),
            )]),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Color(0xff343a40),
              ),
              Text(
                taskName,
                style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: taskCompleted ? Color(0xff6c757d) : Color(0xff343a40),
                    decorationColor:
                        taskCompleted ? Color(0xff6c757d) : Color(0xff343a40)),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Color(0xffe9ecef),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
