part of 'login_form_cubit.dart';

class LoginFormState {
  late bool isLogin;
  late bool erroLogin;
  
  LoginFormState({
    bool? isLogin,
    bool? erroLogin
  }){
    this.isLogin = isLogin ?? false;
    this.erroLogin = erroLogin ?? false;
  }
  
}
