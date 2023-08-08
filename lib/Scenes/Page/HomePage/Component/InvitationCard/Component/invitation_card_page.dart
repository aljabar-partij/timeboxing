import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/invitation_card_model.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class InvitationCardPage extends StatefulWidget {
  final InvitationCard invitationCard;
  const InvitationCardPage({required this.invitationCard, super.key});

  @override
  State<InvitationCardPage> createState() => _InvitationCardPageState();
}

class _InvitationCardPageState extends State<InvitationCardPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(widget.invitationCard.userAvatar),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: widget.invitationCard.username,
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
                  ])),
              Text(
                widget.invitationCard.taskItem.name,
                style: TimeBoxingTextStyle.paragraph2(
                    TimeBoxingFontWeight.bold, TimeBoxingColors.neutralBlack()),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                decoration: BoxDecoration(
                    color: TimeBoxingColors.rainbow1(),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: Text(
                  widget.invitationCard.taskItem.taskPriority.name,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.accent90(TimeBoxingColorType.tint)),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 8, 2),
                    child: Text(
                      widget.invitationCard.taskItem.date,
                      style: TimeBoxingTextStyle.paragraph3(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralBlack()),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                        color: TimeBoxingColors.neutralBlack(),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                    child: Text(
                      widget.invitationCard.taskItem.time,
                      style: TimeBoxingTextStyle.paragraph3(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.neutralBlack()),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                          color: TimeBoxingColors.neutralWhite(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                          border: Border.all(
                              color: TimeBoxingColors.secondary80(
                                  TimeBoxingColorType.shade),
                              width: 1)),
                      child: Text('Decline',
                          style: TimeBoxingTextStyle.paragraph4(
                              TimeBoxingFontWeight.bold,
                              TimeBoxingColors.secondary80(
                                  TimeBoxingColorType.shade))),
                    ),
                  )),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: TimeBoxingColors.primary20(
                            TimeBoxingColorType.shade),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Text('Accept',
                          style: TimeBoxingTextStyle.paragraph4(
                              TimeBoxingFontWeight.bold,
                              TimeBoxingColors.primary90(
                                  TimeBoxingColorType.tint))),
                    ),
                  )),
                ],
              ),
              if (widget.invitationCard.sameTaskNumber != 0)
                const SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.warning,
                    size: 16, // Adjust the size of the icon as needed
                    color: TimeBoxingColors.secondary60(
                        TimeBoxingColorType.shade), // Set the color of the icon
                  ),
                  Text(
                    "You already have ${widget.invitationCard.sameTaskNumber} activities taking place at that time.",
                    style: TimeBoxingTextStyle.paragraph3(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.secondary60(TimeBoxingColorType.shade),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
