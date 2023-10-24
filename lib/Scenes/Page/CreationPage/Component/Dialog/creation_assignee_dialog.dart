import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Model/user_model.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/ViewModel/SearchAssigneeReducer/cubit/search_assignee_cubit.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationAssigneeDialog extends StatelessWidget {
  CreationAssigneeDialog({super.key, required this.didTapInvite});
  Timer? _timer;
  final Function(List<User> selectedUsers)? didTapInvite;

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
                            onChanged: (value) {
                              /// Debounce for 1 sec
                              if (_timer?.isActive ?? false) _timer?.cancel();
                              _timer =
                                  Timer(const Duration(milliseconds: 1000), () {
                                context
                                    .read<SearchAssigneeCubit>()
                                    .searchUser(value);
                              });
                            },
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
                    child:
                        BlocBuilder<SearchAssigneeCubit, SearchAssigneeState>(
                      builder: (context, state) {
                        if (state is SearchAssigneeLoaded) {
                          return Wrap(
                              runSpacing: 4,
                              spacing: 4,
                              children: state.selectedUsers
                                  .map((user) => SelectedAssigneeCard(
                                        user: user,
                                        didTapRemove: (user) {
                                          context
                                              .read<SearchAssigneeCubit>()
                                              .removeAssignee(user);
                                        },
                                      ))
                                  .toList());
                        }
                        return Container();
                      },
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
                child: BlocBuilder<SearchAssigneeCubit, SearchAssigneeState>(
                  builder: (context, state) {
                    if (state is SearchAssigneeLoading) {
                      return ListView(children: const [AssigneeShimmerCard()]);
                    }
                    if (state is SearchAssigneeLoaded) {
                      return ListView(
                          children: state.users
                              .map(
                                (user) => AssigneeCard(
                                  user: user,
                                  didTapUser: (user) {
                                    context
                                        .read<SearchAssigneeCubit>()
                                        .addAssignee(user);
                                  },
                                ),
                              )
                              .toList());
                    }
                    return Container();
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  final state = context.read<SearchAssigneeCubit>().state;
                  if (state is SearchAssigneeLoaded) {
                    didTapInvite!(state.selectedUsers);
                    Navigator.pop(context, true);
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      color:
                          TimeBoxingColors.primary50(TimeBoxingColorType.shade),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    'Invite',
                    textAlign: TextAlign.center,
                    style: TimeBoxingTextStyle.paragraph2(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectedAssigneeCard extends StatelessWidget {
  final User user;
  final Function(User user)? didTapRemove;
  const SelectedAssigneeCard(
      {super.key, required this.user, required this.didTapRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: TimeBoxingColors.text30(TimeBoxingColorType.tint),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 10,
            backgroundImage: NetworkImage(user.avatarUrl),
            backgroundColor: TimeBoxingColors.text90(TimeBoxingColorType.tint),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            user.email,
            style: TimeBoxingTextStyle.paragraph4(
              TimeBoxingFontWeight.regular,
              TimeBoxingColors.text(TimeBoxingColorType.tint),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          GestureDetector(
            onTap: () {
              didTapRemove!(user);
            },
            child: Icon(
              Icons.close,
              size: 12,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
            ),
          )
        ],
      ),
    );
  }
}

class AssigneeCard extends StatelessWidget {
  final User user;
  final Function(User user)? didTapUser;
  const AssigneeCard({super.key, required this.user, required this.didTapUser});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        didTapUser!(user);
      },
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.avatarUrl),
        backgroundColor: TimeBoxingColors.text90(TimeBoxingColorType.tint),
        radius: 16,
      ),
      title: Text(
        user.username,
        style: TimeBoxingTextStyle.paragraph2(
          TimeBoxingFontWeight.bold,
          TimeBoxingColors.text(TimeBoxingColorType.tint),
        ),
      ),
      subtitle: Text(
        user.email,
        style: TimeBoxingTextStyle.paragraph4(
          TimeBoxingFontWeight.regular,
          TimeBoxingColors.text40(TimeBoxingColorType.tint),
        ),
      ),
      trailing: Icon(
        Icons.person_add,
        size: 16,
        color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
      ),
    );
  }
}

class AssigneeShimmerCard extends StatelessWidget {
  const AssigneeShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: TimeBoxingColors.text90(TimeBoxingColorType.tint),
        radius: 16,
      ),
      title: Container(
        height: 16,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: TimeBoxingColors.text90(TimeBoxingColorType.tint),
        ),
      ),
      subtitle: Container(
        height: 10,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: TimeBoxingColors.text90(TimeBoxingColorType.tint),
        ),
      ),
    );
  }
}
