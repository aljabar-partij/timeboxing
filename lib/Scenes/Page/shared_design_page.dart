import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class SharedDesignPage extends StatefulWidget {
  const SharedDesignPage({super.key});

  @override
  State<SharedDesignPage> createState() => _SharedDesignPage();
}

class _SharedDesignPage extends State<SharedDesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Design'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expandedHeaderPadding: EdgeInsets.zero,
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              panels[panelIndex].isExpanded = !panels[panelIndex].isExpanded;
            });
          },
          children: panels.map((data) {
            return ExpansionPanel(
              isExpanded: data.isExpanded,
              canTapOnHeader: true,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text(data.title),
                );
              },
              body: data.child,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DummyTextStyle {
  String text;
  TextStyle textStyle;
  DummyTextStyle(this.text, this.textStyle);
}

class DummyColor {
  String text;
  Color color;
  DummyColor(this.text, this.color);
}

class DummyPanel {
  String title;
  bool isExpanded = false;
  Widget child;
  DummyPanel(this.title, this.child);
}

final List<DummyTextStyle> headlineTexts = [
  DummyTextStyle(
      'Headline 1 Plus',
      TimeBoxingTextStyle.headline1Plus(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Headline 1',
      TimeBoxingTextStyle.headline1(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Headline 2',
      TimeBoxingTextStyle.headline2(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Headline 3',
      TimeBoxingTextStyle.headline3(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Headline 4',
      TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
];

final List<DummyTextStyle> paragraphTexts = [
  DummyTextStyle(
      'Paragraph 1',
      TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Paragraph 2',
      TimeBoxingTextStyle.paragraph2(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Paragraph 3',
      TimeBoxingTextStyle.paragraph3(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Paragraph 4',
      TimeBoxingTextStyle.paragraph4(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
  DummyTextStyle(
      'Paragraph 5',
      TimeBoxingTextStyle.paragraph5(TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint))),
];

final List<DummyColor> primaryTintColors = [
  DummyColor(
      'Primary Tint 10', TimeBoxingColors.primary(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 20', TimeBoxingColors.primary20(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 30', TimeBoxingColors.primary30(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 40', TimeBoxingColors.primary40(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 50', TimeBoxingColors.primary50(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 60', TimeBoxingColors.primary60(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 70', TimeBoxingColors.primary70(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 80', TimeBoxingColors.primary80(TimeBoxingColorType.tint)),
  DummyColor(
      'Primary Tint 90', TimeBoxingColors.primary90(TimeBoxingColorType.tint)),
];

final List<DummyColor> primaryShadeColors = [
  DummyColor(
      'Primary Shade 10', TimeBoxingColors.primary(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 20',
      TimeBoxingColors.primary20(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 30',
      TimeBoxingColors.primary30(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 40',
      TimeBoxingColors.primary40(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 50',
      TimeBoxingColors.primary50(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 60',
      TimeBoxingColors.primary60(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 70',
      TimeBoxingColors.primary70(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 80',
      TimeBoxingColors.primary80(TimeBoxingColorType.shade)),
  DummyColor('Primary Shade 90',
      TimeBoxingColors.primary90(TimeBoxingColorType.shade)),
];

final List<DummyColor> secondaryTintColors = [
  DummyColor('Secondary Tint 10',
      TimeBoxingColors.secondary(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 20',
      TimeBoxingColors.secondary20(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 30',
      TimeBoxingColors.secondary30(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 40',
      TimeBoxingColors.secondary40(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 50',
      TimeBoxingColors.secondary50(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 60',
      TimeBoxingColors.secondary60(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 70',
      TimeBoxingColors.secondary70(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 80',
      TimeBoxingColors.secondary80(TimeBoxingColorType.tint)),
  DummyColor('Secondary Tint 90',
      TimeBoxingColors.secondary90(TimeBoxingColorType.tint)),
];

final List<DummyColor> secondaryShadeColors = [
  DummyColor('Secondary Shade 10',
      TimeBoxingColors.secondary(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 20',
      TimeBoxingColors.secondary20(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 30',
      TimeBoxingColors.secondary30(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 40',
      TimeBoxingColors.secondary40(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 50',
      TimeBoxingColors.secondary50(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 60',
      TimeBoxingColors.secondary60(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 70',
      TimeBoxingColors.secondary70(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 80',
      TimeBoxingColors.secondary80(TimeBoxingColorType.shade)),
  DummyColor('Secondary Shade 90',
      TimeBoxingColors.secondary90(TimeBoxingColorType.shade)),
];

final List<DummyColor> accentTintColors = [
  DummyColor(
      'Accent Tint 10', TimeBoxingColors.accent(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 20', TimeBoxingColors.accent20(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 30', TimeBoxingColors.accent30(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 40', TimeBoxingColors.accent40(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 50', TimeBoxingColors.accent50(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 60', TimeBoxingColors.accent60(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 70', TimeBoxingColors.accent70(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 80', TimeBoxingColors.accent80(TimeBoxingColorType.tint)),
  DummyColor(
      'Accent Tint 90', TimeBoxingColors.accent90(TimeBoxingColorType.tint)),
];

final List<DummyColor> accentShadeColors = [
  DummyColor(
      'Accent Shade 10', TimeBoxingColors.accent(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 20', TimeBoxingColors.accent20(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 30', TimeBoxingColors.accent30(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 40', TimeBoxingColors.accent40(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 50', TimeBoxingColors.accent50(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 60', TimeBoxingColors.accent60(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 70', TimeBoxingColors.accent70(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 80', TimeBoxingColors.accent80(TimeBoxingColorType.shade)),
  DummyColor(
      'Accent Shade 90', TimeBoxingColors.accent90(TimeBoxingColorType.shade)),
];

final List<DummyColor> textTintColors = [
  DummyColor('Text Tint 10', TimeBoxingColors.text(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 20', TimeBoxingColors.text20(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 30', TimeBoxingColors.text30(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 40', TimeBoxingColors.text40(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 50', TimeBoxingColors.text50(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 60', TimeBoxingColors.text60(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 70', TimeBoxingColors.text70(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 80', TimeBoxingColors.text80(TimeBoxingColorType.tint)),
  DummyColor('Text Tint 90', TimeBoxingColors.text90(TimeBoxingColorType.tint)),
];

final List<DummyColor> textShadeColors = [
  DummyColor('Text Shade 10', TimeBoxingColors.text(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 20', TimeBoxingColors.text20(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 30', TimeBoxingColors.text30(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 40', TimeBoxingColors.text40(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 50', TimeBoxingColors.text50(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 60', TimeBoxingColors.text60(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 70', TimeBoxingColors.text70(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 80', TimeBoxingColors.text80(TimeBoxingColorType.shade)),
  DummyColor(
      'Text Shade 90', TimeBoxingColors.text90(TimeBoxingColorType.shade)),
];

final List<DummyColor> neutralColors = [
  DummyColor('Neutral White', TimeBoxingColors.neutralWhite()),
  DummyColor('Neutral Lotion', TimeBoxingColors.neutralLotion()),
  DummyColor('Text Shade 30', TimeBoxingColors.neutralBlack()),
];

final List<DummyColor> rainbowColors = [
  DummyColor('Rainbow 1', TimeBoxingColors.rainbow1()),
  DummyColor('Rainbow 2', TimeBoxingColors.rainbow2()),
  DummyColor('Rainbow 3', TimeBoxingColors.rainbow3()),
  DummyColor('Rainbow 4', TimeBoxingColors.rainbow4()),
  DummyColor('Rainbow 5', TimeBoxingColors.rainbow5()),
  DummyColor('Rainbow 6', TimeBoxingColors.rainbow6()),
  DummyColor('Rainbow 7', TimeBoxingColors.rainbow7()),
  DummyColor('Rainbow 8', TimeBoxingColors.rainbow8()),
  DummyColor('Rainbow 9', TimeBoxingColors.rainbow9()),
];

final List<DummyPanel> panels = [
  DummyPanel(
      'Text Design',
      Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Divider(
                  color: Colors.black54,
                ),
                Text(
                  "Headline Text",
                  style: TimeBoxingTextStyle.headline4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
                const Divider(
                  color: Colors.black54,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...headlineTexts.map(
                      (data) => Text(
                        data.text,
                        style: data.textStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Divider(
                    color: Colors.black54,
                  ),
                  Text(
                    "Paragraph Text",
                    style: TimeBoxingTextStyle.headline4(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.text(TimeBoxingColorType.tint)),
                  ),
                  const Divider(
                    color: Colors.black54,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...paragraphTexts.map(
                        (data) => Text(
                          data.text,
                          style: data.textStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
  DummyPanel(
    'Color Design',
    Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Divider(
            color: Colors.black54,
          ),
          Text(
            'Primary Color',
            style: TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
                TimeBoxingColors.text(TimeBoxingColorType.tint)),
          ),
          const Divider(
            color: Colors.black54,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              'Tint Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...primaryTintColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              'Shade Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...primaryShadeColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            child: const Divider(
              color: Colors.black54,
            ),
          ),
          Text(
            'Secondary Color',
            style: TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
                TimeBoxingColors.text(TimeBoxingColorType.tint)),
          ),
          const Divider(
            color: Colors.black54,
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              'Tint Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...secondaryTintColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              'Shade Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...secondaryShadeColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            child: const Divider(
              color: Colors.black54,
            ),
          ),
          Text(
            'Accent Color',
            style: TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
                TimeBoxingColors.text(TimeBoxingColorType.tint)),
          ),
          const Divider(
            color: Colors.black54,
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              'Tint Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...accentTintColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              'Shade Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...accentShadeColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            child: const Divider(
              color: Colors.black54,
            ),
          ),
          Text(
            'Text Color',
            style: TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
                TimeBoxingColors.text(TimeBoxingColorType.tint)),
          ),
          const Divider(
            color: Colors.black54,
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              'Tint Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...textTintColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              'Shade Color',
              style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text(TimeBoxingColorType.tint)),
            ),
          ),
          ...textShadeColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            child: const Divider(
              color: Colors.black54,
            ),
          ),
          Text(
            'Neutral Color',
            style: TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
                TimeBoxingColors.text(TimeBoxingColorType.tint)),
          ),
          const Divider(
            color: Colors.black54,
          ),
          ...neutralColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            child: const Divider(
              color: Colors.black54,
            ),
          ),
          Text(
            'Rainbow Color',
            style: TimeBoxingTextStyle.headline4(TimeBoxingFontWeight.bold,
                TimeBoxingColors.text(TimeBoxingColorType.tint)),
          ),
          const Divider(
            color: Colors.black54,
          ),
          ...rainbowColors.map(
            (data) {
              return Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: data.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  data.text,
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.tint)),
                ),
              );
            },
          ),
        ],
      ),
    ),
  ),
];
