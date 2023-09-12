import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Model/notification_item.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Model/notification_item.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({super.key, required this.notificationItems});
  final NotificationItem notificationItems;

  @override
  State<NotificationCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TimeBoxingColors.neutralWhite(),
        border: Border(
          bottom: BorderSide(
            color: TimeBoxingColors.text70(TimeBoxingColorType.tint),
            width: 0.5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: ListTile(
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.notificationItems.invitationStat
                    ? Icons.chevron_right
                    : null,
                size: 30,
                color: TimeBoxingColors.text90(
                  TimeBoxingColorType.shade,
                ),
              ),
            ],
          ),
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(widget.notificationItems.userAvatar),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: widget.notificationItems.username,
                  style: TimeBoxingTextStyle.paragraph2(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralBlack()),
                  children: <TextSpan>[
                    TextSpan(
                      text: " invites you to join his activity:",
                      style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.neutralBlack()),
                    )
                  ],
                ),
              ),
              Text(
                widget.notificationItems.taskItem.name,
                style: TimeBoxingTextStyle.paragraph2(
                    TimeBoxingFontWeight.bold, TimeBoxingColors.neutralBlack()),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                decoration: BoxDecoration(
                    color: TimeBoxingColors.rainbow1(),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: Text(
                  widget.notificationItems.taskItem.taskPriority.name,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.accent90(TimeBoxingColorType.tint)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    widget.notificationItems.taskItem.date,
                    style: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralBlack()),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: TimeBoxingColors.neutralBlack())),
                    width: 2,
                    height: 2,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.notificationItems.taskItem.time,
                    style: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.regular,
                        TimeBoxingColors.neutralBlack()),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    widget.notificationItems.invitationStat
                        ? Icons.check_circle_outline
                        : Icons.close_outlined,
                    color: TimeBoxingColors.neutralBlack(),
                    size: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    widget.notificationItems.invitationStat
                        ? 'You Have Accepted this invitation'
                        : 'You Have Declined this invitation',
                    style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.primary50(TimeBoxingColorType.shade),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
