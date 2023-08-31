import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class NotificationItem {
  String username;
  String userAvatar;
  TaskItem taskItem;
  int sameTaskNumber;

  NotificationItem({
    required this.username,
    required this.userAvatar,
    required this.taskItem,
    required this.sameTaskNumber,
  });
}
