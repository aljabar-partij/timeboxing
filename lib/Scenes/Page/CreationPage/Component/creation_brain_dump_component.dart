import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_task_priority_bottomsheet.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/Component/task_form_component.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/Component/task_item_component.dart';

class CreationBrainDumpComponent extends StatefulWidget {
  const CreationBrainDumpComponent({super.key});

  @override
  State<CreationBrainDumpComponent> createState() =>
      _CreationBrainDumpComponentState();
}

class _CreationBrainDumpComponentState
    extends State<CreationBrainDumpComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          const TaskForm(),
          TaskItem(
            onTapAddPriority: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32.0),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const CreationTaskPriorityBottomsheet();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
