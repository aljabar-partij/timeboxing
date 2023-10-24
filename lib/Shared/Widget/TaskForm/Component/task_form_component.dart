import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/ViewModel/cubit/task_form_cubit.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/ViewModel/cubit/task_item_cubit.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/ViewModel/weekly_date_picker_cubit.dart';

class TaskFormWidget extends StatelessWidget {
  TaskFormWidget({super.key});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'icon/ellipse-dots.svg',
            width: 16,
            height: 16,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 14,
                        child: TextField(
                          controller: _textEditingController,
                          maxLines: 1,
                          style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text(TimeBoxingColorType.tint),
                          ),
                          decoration: InputDecoration(
                            hintText: 'My brain dump ...',
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
                    GestureDetector(
                      onTap: () {
                        var title = _textEditingController.text;
                        var date = context
                            .read<WeeklyDatePickerCubit>()
                            .state
                            .selectedDate;
                        var requestState = context
                            .read<TaskFormCubit>()
                            .saveBrainDump(title, date);

                        requestState.then((state) {
                          if (state is TaskFormSuccess) {
                            context.read<TaskItemCubit>().getTask(date);
                            _textEditingController.text = '';
                          } else if (state is TaskFormFailure) {
                            /// Failure
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: BlocBuilder<TaskFormCubit, TaskFormState>(
                          builder: (context, state) {
                            Widget trailingWigdet;
                            if (state is TaskFormLoading) {
                              trailingWigdet = Text(
                                'Saving...',
                                textAlign: TextAlign.center,
                                style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.text(
                                      TimeBoxingColorType.tint),
                                ),
                              );
                            } else {
                              trailingWigdet = Icon(
                                Icons.send,
                                size: 16,
                                color: TimeBoxingColors.primary50(
                                    TimeBoxingColorType.shade),
                              );
                            }
                            return trailingWigdet;
                          },
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 0.5,
                  color: TimeBoxingColors.text(TimeBoxingColorType.tint),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
