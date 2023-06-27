import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class SharedDesignPage extends StatelessWidget {
  const SharedDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Headline Text",
                    style: TimeBoxingTextStyle.headline1Plus(Colors.red),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Headline 1 Plus",
                        style: TimeBoxingTextStyle.headline1Plus(Colors.black),
                      ),
                      Text(
                        "Headline 1",
                        style: TimeBoxingTextStyle.headline1(),
                      ),
                      Text(
                        "Headline 2",
                        style: TimeBoxingTextStyle.headline2(),
                      ),
                      Text(
                        "Headline 3",
                        style: TimeBoxingTextStyle.headline3(),
                      ),
                      Text(
                        "Headline 4",
                        style: TimeBoxingTextStyle.headline4(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paragraph Text",
                    style: TimeBoxingTextStyle.headline1Plus(Colors.red),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Paragraph 1",
                        style: TimeBoxingTextStyle.paragraph1(
                            TimeBoxingFontWeight.bold),
                      ),
                      Text(
                        "Paragraph 2",
                        style: TimeBoxingTextStyle.paragraph2(
                            TimeBoxingFontWeight.bold),
                      ),
                      Text(
                        "Paragraph 3",
                        style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.bold),
                      ),
                      Text(
                        "Paragraph 4",
                        style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.bold),
                      ),
                      Text(
                        "Paragraph 5",
                        style: TimeBoxingTextStyle.paragraph5(
                            TimeBoxingFontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
