import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

class SkeletonPage extends StatefulWidget {
  const SkeletonPage({super.key});

  @override
  State<SkeletonPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SkeletonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: TimeBoxingColors.neutralWhite(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24, 56, 24, 12),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              TimeBoxingColors.text90(TimeBoxingColorType.tint),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        width: 106,
                        height: 18,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              TimeBoxingColors.text90(TimeBoxingColorType.tint),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        width: 140,
                        height: 18,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
