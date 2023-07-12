import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

class TaskItem {
  String id;
  TaskPriority taskPriority;
  String name;
  String time;
  String description;

  TaskItem({
    required this.id,
    required this.name,
    required this.description,
    required this.time,
    required this.taskPriority,
  }) {
    taskPriority.id = '${id}_${taskPriority.name}';
  }
}

enum TaskPriorityType {
  p0(),
  p1(),
  p2(),
  p3(),
  p4();
}

class TaskPriority {
  String id = '';
  String? label;
  Color? color;
  TaskPriorityType? type;
  String? name;

  TaskPriority({
    this.type,
  }) {
    switch (type) {
      case TaskPriorityType.p0:
        name = 'Very High';
        label = 'P0';
        color = TimeBoxingColors.rainbow1();
      case TaskPriorityType.p1:
        name = 'High';
        label = 'P1';
        color = TimeBoxingColors.rainbow2();
      case TaskPriorityType.p2:
        name = 'Normal';
        label = 'P2';
        color = TimeBoxingColors.rainbow3();
      case TaskPriorityType.p3:
        name = 'Low';
        label = 'P3';
        color = TimeBoxingColors.rainbow4();
      case TaskPriorityType.p4:
        name = 'Very Low';
        label = 'P4';
        color = TimeBoxingColors.rainbow5();
      default:
        name = null;
        color = null;
    }
  }
}
