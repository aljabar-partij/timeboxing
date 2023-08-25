part of 'signup_form_cubit.dart';

class SignupFormState{
  bool succesSignup = false;
  String? errorMassage;

  SignupFormState({
    bool? succesSignup,
    this.errorMassage
  }){
    this.succesSignup = succesSignup ?? this.succesSignup;
  }
}


