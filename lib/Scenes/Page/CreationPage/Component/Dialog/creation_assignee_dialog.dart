import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationAssigneeDialog extends StatefulWidget {
  const CreationAssigneeDialog({super.key});

  @override
  State<CreationAssigneeDialog> createState() => _CreationAssigneeDialogState();
}

class _CreationAssigneeDialogState extends State<CreationAssigneeDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Assignee',
                      style: TimeBoxingTextStyle.paragraph1(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.text(TimeBoxingColorType.tint),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context, true),
                      child: Icon(
                        Icons.close,
                        color: TimeBoxingColors.text(TimeBoxingColorType.tint),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 14,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 1,
                            style: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            ),
                            decoration: InputDecoration(
                              hintText: 'your_friend@email.com',
                              hintStyle: TimeBoxingTextStyle.paragraph3(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text(TimeBoxingColorType.tint),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              border: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: TimeBoxingColors.primary50(
                            TimeBoxingColorType.shade),
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    height: 0,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      runSpacing: 4,
                      spacing: 4,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: TimeBoxingColors.text30(
                                  TimeBoxingColorType.tint),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: TimeBoxingColors.primary50(
                                    TimeBoxingColorType.shade),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'jordy@gmail.com',
                                style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.text(
                                      TimeBoxingColorType.tint),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.close,
                                size: 12,
                                color: TimeBoxingColors.primary50(
                                    TimeBoxingColorType.shade),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: TimeBoxingColors.text30(
                                  TimeBoxingColorType.tint),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                  radius: 10,
                                  backgroundColor: TimeBoxingColors.primary50(
                                      TimeBoxingColorType.shade)),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'jordy@gmail.com',
                                style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.text(
                                      TimeBoxingColorType.tint),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.close,
                                size: 12,
                                color: TimeBoxingColors.primary50(
                                    TimeBoxingColorType.shade),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 3),
                child: ListView(
                  children: [
                    ListTile(
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: TimeBoxingColors.primary50(
                            TimeBoxingColorType.shade),
                        radius: 16,
                      ),
                      title: Text(
                        'Jordy The Pussy Wrecker',
                        style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text(TimeBoxingColorType.tint),
                        ),
                      ),
                      subtitle: Text(
                        'jordy_imoet@gmail.com',
                        style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text40(TimeBoxingColorType.tint),
                        ),
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: TimeBoxingColors.primary50(
                            TimeBoxingColorType.shade),
                        radius: 16,
                      ),
                      title: Text(
                        'Jordy The Pussy Wrecker',
                        style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text(TimeBoxingColorType.tint),
                        ),
                      ),
                      subtitle: Text(
                        'jordy_imoet@gmail.com',
                        style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text40(TimeBoxingColorType.tint),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}