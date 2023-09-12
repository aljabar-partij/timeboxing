import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class EmptyNotificationPage extends StatefulWidget {
  const EmptyNotificationPage({super.key});

  @override
  State<EmptyNotificationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EmptyNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              width: 178,
              height: 178,
              fit: BoxFit.fill),
          const SizedBox(
            height: 17,
          ),
          Text(
            'There’s nothing here yet...',
            style: TimeBoxingTextStyle.headline3(
              TimeBoxingFontWeight.bold,
              TimeBoxingColors.neutralBlack(),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'You haven’t received any notification yet!',
            style: TimeBoxingTextStyle.paragraph1(
              TimeBoxingFontWeight.regular,
              TimeBoxingColors.neutralBlack(),
            ),
          ),
        ],
      ),
    );
  }
}
