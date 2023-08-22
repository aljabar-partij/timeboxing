import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'signup_form_state.dart';

class SignupFormCubit extends Cubit<SignupFormState> {
  SignupFormCubit() : super(SignupFormState());

  void signupPressed(String email, String password, String displayName) async {
    try {
      UserCredential result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;
      user?.updateDisplayName(displayName); 
      FirebaseAuth.instance.signOut();
      final signupForm = SignupFormState(
        succesSignup: true,
      );
      emit(signupForm);
    } on FirebaseAuthException catch (eror) {
      final signupFormState = SignupFormState(
        errorMassage: eror.message,
      );
      emit(signupFormState);
    }
  }


}
