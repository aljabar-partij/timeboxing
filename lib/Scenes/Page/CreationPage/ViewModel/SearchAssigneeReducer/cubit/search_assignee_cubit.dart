import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Model/user_model.dart';

part 'search_assignee_state.dart';

typedef UserList = List<User>;

class SearchAssigneeCubit extends Cubit<SearchAssigneeState> {
  SearchAssigneeCubit(UserList selectedUser)
      : super(SearchAssigneeLoaded(users: [], selectedUsers: selectedUser));

  void searchUser(String email) {
    final currentState = (state as SearchAssigneeLoaded);

    // If empty, should remove all user list
    // will not hit API
    if (email.isEmpty) {
      emit(SearchAssigneeLoaded(
          users: [], selectedUsers: currentState.selectedUsers));
      return;
    }

    // Hit API
    // Emit loading state
    emit(SearchAssigneeLoading());
    try {
      FirebaseFirestore.instance
          .collection('user')
          .where("email",
              isGreaterThanOrEqualTo: email,
              isLessThan: email.substring(0, email.length - 1) +
                  String.fromCharCode(email.codeUnitAt(email.length - 1) + 1))
          .get()
          .then((snapshot) {
        var users =
            snapshot.docs.map((docs) => User.fromJSON(docs.data())).toList();
        emit(SearchAssigneeLoaded(
            users: users, selectedUsers: currentState.selectedUsers));
      });
    } on FirebaseException catch (error) {
      emit(SearchAssigneeError(errorMessage: error.message ?? 'Try again...'));
    }
  }

  void addAssignee(User user) {
    final currentState = (state as SearchAssigneeLoaded);
    if (currentState.selectedUsers.contains(user)) return;
    currentState.selectedUsers.add(user);
    emit(SearchAssigneeLoaded(
        users: currentState.users, selectedUsers: currentState.selectedUsers));
  }

  void removeAssignee(User user) {
    final currentState = (state as SearchAssigneeLoaded);
    currentState.selectedUsers.remove(user);
    emit(SearchAssigneeLoaded(
        users: currentState.users, selectedUsers: currentState.selectedUsers));
  }
}
