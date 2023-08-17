import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class InvitationCard {
  String username;
  String userAvatar;
  TaskItem taskItem;
  int sameTaskNumber;

  InvitationCard({
    required this.username,
    required this.userAvatar,
    required this.taskItem,
    required this.sameTaskNumber,
  });
}
