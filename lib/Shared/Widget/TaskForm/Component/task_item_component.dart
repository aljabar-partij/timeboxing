import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key, required this.onTapAddPriority});
  final void Function()? onTapAddPriority;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'icon/remove-circle-outline.svg',
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: GestureDetector(
              onTap: widget.onTapAddPriority,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Minum susu rasa semangka, kamunya lucu aku nya ngaceng. Enak susu nya mama mama. Minum susu rasa semangka, kamunya lucu aku nya ngaceng. Enak susu nya mama mama',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text(TimeBoxingColorType.tint),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: TimeBoxingColors.primary50(
                                  TimeBoxingColorType.shade),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 10,
                              color: TimeBoxingColors.neutralWhite(),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Add\nPriority',
                            textAlign: TextAlign.center,
                            style: TimeBoxingTextStyle.paragraph5(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 0.8,
                    color: TimeBoxingColors.text80(TimeBoxingColorType.tint),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
