import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_form_state.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit() : super(LoginFormState());
  void loginPressed(String email, String password) async {
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final loginForm = LoginFormState(
        isLogin: true,
      );
      emit(loginForm);
    } on FirebaseAuthException catch (eror) {
      final loginFormState = LoginFormState(erroLogin: true);
      emit(loginFormState);
    }
  }
}
