import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: TimeBoxingColors.neutralWhite(),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(
                color: TimeBoxingColors.secondary80(TimeBoxingColorType.shade),
                width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'icon/google-icon.svg',
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              'Sign in with Google',
              style: TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.primary70(TimeBoxingColorType.shade)),
            )
          ],
        ),
      ),
    );
  }
}
