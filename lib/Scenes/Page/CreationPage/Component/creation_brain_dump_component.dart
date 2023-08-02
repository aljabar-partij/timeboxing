import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_task_form_component.dart';

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
      child: const Column(
        children: [
          CreationTaskForm(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
          CreationTaskItem(),
        ],
      ),
    );
  }
}