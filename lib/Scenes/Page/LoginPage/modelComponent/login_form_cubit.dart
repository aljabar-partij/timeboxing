import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_form_state.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit() : super(LoginFormState());
  void loginPressed(String email, String password) async {
    emit(LoginFormState(isLoading: true));
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // print(user);
      emit(LoginFormState(isLoading: false));
    } on FirebaseAuthException catch (eror) {
      final loginFormState = LoginFormState(
        erroLogin: true,
        isLoading: false,
      );
      emit(loginFormState);
    }
  }
}
