part of 'signup_form_cubit.dart';

class SignupFormState{
  bool? succesSignup;
  String? errorMassage;

  SignupFormState({
    bool? succesSignup,
    String? errorMassage
  }){
    this.succesSignup = succesSignup ?? false;
    this.errorMassage = errorMassage ?? '';
  }
}


