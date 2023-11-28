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
        backgroundColor: TimeBoxingColors.neutralLotion(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(24, 56, 24, 12),
                child: Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: TimeBoxingColors.text90(
                                  TimeBoxingColorType.tint),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                            ),
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: 18,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: TimeBoxingColors.text90(
                                  TimeBoxingColorType.tint),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                            ),
                            width: MediaQuery.of(context).size.width / 4,
                            height: 18,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: TimeBoxingColors.text90(
                                TimeBoxingColorType.tint),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        height: 24,
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: TimeBoxingColors.text90(
                                TimeBoxingColorType.tint),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        height: 24,
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: TimeBoxingColors.neutralWhite(),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      color: TimeBoxingColors.neutralBlack().withOpacity(0.08),
                      blurRadius: 8,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: TimeBoxingColors.text90(
                                TimeBoxingColorType.tint),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: TimeBoxingColors.text90(
                                TimeBoxingColorType.tint),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height: 18,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              TimeBoxingColors.text90(TimeBoxingColorType.tint),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        width: MediaQuery.of(context).size.width / 4,
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: TimeBoxingColors.text90(
                                TimeBoxingColorType.tint),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height: 142,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: TimeBoxingColors.text90(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              ),
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 32,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: TimeBoxingColors.text90(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              ),
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 32,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: TimeBoxingColors.text90(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              ),
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 32,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: TimeBoxingColors.text90(
                                TimeBoxingColorType.tint),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height: 142,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: TimeBoxingColors.text90(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              ),
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 32,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: TimeBoxingColors.text90(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              ),
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 32,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: TimeBoxingColors.text90(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              ),
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 32,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 22),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: TimeBoxingColors.neutralWhite(),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      color: TimeBoxingColors.neutralBlack().withOpacity(0.08),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color:
                            TimeBoxingColors.text90(TimeBoxingColorType.tint),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      width: MediaQuery.of(context).size.width / 2.25,
                      height: 20,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color:
                            TimeBoxingColors.text90(TimeBoxingColorType.tint),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 128,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color:
                            TimeBoxingColors.text90(TimeBoxingColorType.tint),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 36,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
