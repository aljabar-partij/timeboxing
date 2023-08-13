import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationRepeatDialog extends StatefulWidget {
  const CreationRepeatDialog({super.key});

  @override
  State<CreationRepeatDialog> createState() => _CreationRepeatDialogState();
}

class _CreationRepeatDialogState extends State<CreationRepeatDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
      ),
      content: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Repeat',
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
          ListTile(
            title: Text(
              'Every day',
              style: TimeBoxingTextStyle.paragraph3(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.text(TimeBoxingColorType.tint),
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
              size: 16,
            ),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            title: Text(
              'Every week',
              style: TimeBoxingTextStyle.paragraph3(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.text(TimeBoxingColorType.tint),
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
              size: 16,
            ),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            title: Text(
              'Every month',
              style: TimeBoxingTextStyle.paragraph3(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.text(TimeBoxingColorType.tint),
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
              size: 16,
            ),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            title: Text(
              'Never',
              style: TimeBoxingTextStyle.paragraph3(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.text(TimeBoxingColorType.tint),
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
              size: 16,
            ),
          )
        ],
      ),
    );
  }
}