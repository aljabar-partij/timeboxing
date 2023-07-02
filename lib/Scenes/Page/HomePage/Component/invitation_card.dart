import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class TimeboxingInvitationCard extends StatefulWidget {
  const TimeboxingInvitationCard({super.key});

  @override
  State<TimeboxingInvitationCard> createState() =>
      _TimeboxingInvitationCardState();
}

class _TimeboxingInvitationCardState extends State<TimeboxingInvitationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: TimeBoxingColors.neutralLotion(),
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
      child: Row(
        children: [
          Text(
            'Ini Section Invitation Card',
            style: TimeBoxingTextStyle.paragraph2(
              TimeBoxingFontWeight.regular,
              TimeBoxingColors.neutralBlack(),
            ),
          ),
          const Spacer(),
          const Icon(Icons.calendar_today),
        ],
      ), //SEBELUM DEVELOP, ROW JANGAN LUPA DIHAPUS  KARENA HANYA BUAT PENANDA DOANG
    );
  }
}
