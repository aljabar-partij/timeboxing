import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_brain_dump_component.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_list_component.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/Component/weekly_date_picker_component.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/ViewModel/weekly_date_picker_cubit.dart';

class CreationPage extends StatelessWidget {
  const CreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WeeklyDatePickerCubit(),
        ),
      ],
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: TimeBoxingColors.primary70(TimeBoxingColorType.tint),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Timeboxing Creation',
                style: TimeBoxingTextStyle.headline3(
                    TimeBoxingFontWeight.bold, TimeBoxingColors.neutralBlack()),
              ),
            ),
            // Date Picker
            Container(
              color: TimeBoxingColors.primary70(TimeBoxingColorType.tint),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: const WeeklyDatePicker(),
            ),
            // Priority List
            const CreationListComponent(),
            // Brain Dump
            const CreationBrainDumpComponent()
          ],
        ),
      )),
    );
  }
}
