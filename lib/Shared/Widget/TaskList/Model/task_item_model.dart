import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Model/user_model.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

class TaskItem extends Equatable {
  String id;
  String userId;
  String title;
  DateTime date;
  DateTime? startTime;
  DateTime? endTime;
  String description;
  TaskPriority? taskPriority;
  List<User> assignees;

  TaskItem({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.taskPriority,
    required this.assignees,
  });

  factory TaskItem.createRequest(String title, DateTime date, String userId) {
    return TaskItem(
        id: '',
        userId: userId,
        title: title,
        description: '',
        date: date,
        startTime: null,
        endTime: null,
        taskPriority: null,
        assignees: const []);
  }

  factory TaskItem.fromJSON(Map<String, dynamic> json, String id) {
    return TaskItem(
      id: id,
      userId: json['userId'],
      title: json['title'],
      description: json['description'],
      date: (json['date'] as Timestamp).toDate(),
      startTime: json['startTime'] != null
          ? (json['startTime'] as Timestamp).toDate()
          : null,
      endTime: json['endTime'] != null
          ? (json['endTime'] as Timestamp).toDate()
          : null,
      taskPriority: json['taskPriority'] != null
          ? TaskPriority.fromTypeWeight(json['taskPriority'])
          : null,
      assignees: (json['assignees'] as List<dynamic>).isNotEmpty
          ? fromListJSON(json['assignees'])
              .map((json) => User.fromJSON(json))
              .toList()
          : [],
    );
  }

  static List<Map<String, dynamic>> fromListJSON(List<dynamic> listJSON) {
    return List<Map<String, dynamic>>.from(listJSON);
  }

  Map<String, dynamic> toJSON() {
    return {
      'title': title,
      'date': date,
      'startTime': startTime,
      'endTime': endTime,
      'userId': userId,
      'description': description,
      'taskPriority': taskPriority?.typeWeight,
      'assignees': assignees.map((assignee) => assignee.toJSON()).toList(),
    };
  }

  @override
  List<String> get props => [id];
}

enum TaskPriorityType { p0, p1, p2, p3, p4, unknownn }

class TaskPriority extends Equatable {
  String label = '';
  String name = '';
  Color color = Colors.black;
  TaskPriorityType type;
  int typeWeight = 0;

  TaskPriority({required this.type}) {
    switch (type) {
      case TaskPriorityType.p0:
        name = 'Very High';
        label = 'P0';
        color = TimeBoxingColors.rainbow1();
        typeWeight = 0;
      case TaskPriorityType.p1:
        name = 'High';
        label = 'P1';
        color = TimeBoxingColors.rainbow8();
        typeWeight = 1;
      case TaskPriorityType.p2:
        name = 'Normal';
        label = 'P2';
        color = TimeBoxingColors.rainbow4();
        typeWeight = 2;
      case TaskPriorityType.p3:
        name = 'Low';
        label = 'P3';
        color = TimeBoxingColors.rainbow2();
        typeWeight = 3;
      case TaskPriorityType.p4:
        name = 'Very Low';
        label = 'P4';
        color = TimeBoxingColors.rainbow7();
        typeWeight = 4;
      case TaskPriorityType.unknownn:
        name = '';
        label = '';
        color = TimeBoxingColors.neutralWhite();
        typeWeight = 99;
    }
  }

  factory TaskPriority.fromTypeWeight(int typeWeight) {
    switch (typeWeight) {
      case 0:
        return TaskPriority(type: TaskPriorityType.p0);
      case 1:
        return TaskPriority(type: TaskPriorityType.p1);
      case 2:
        return TaskPriority(type: TaskPriorityType.p2);
      case 3:
        return TaskPriority(type: TaskPriorityType.p3);
      case 4:
        return TaskPriority(type: TaskPriorityType.p4);
      default:
        return TaskPriority(type: TaskPriorityType.unknownn);
    }
  }

  @override
  List<String> get props => [typeWeight.toString()];
}

class TodayTask extends Equatable {
  TaskPriority taskPriority;
  List<TaskItem> taskItems;

  TodayTask({required this.taskPriority, required this.taskItems});

  @override
  List<String> get props => [taskPriority.typeWeight.toString()];
}
