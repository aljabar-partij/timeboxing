part of 'login_form_cubit.dart';

class LoginFormState {
  // late bool isLogin; // Buat Jaga Jaga Kalau ke Pakai di kemudian hari
  late bool erroLogin;
  
  LoginFormState({
    // bool? isLogin, // Buat Jaga Jaga Kalau ke Pakai di kemudian hari
    bool? erroLogin
  }){
    // this.isLogin = isLogin ?? false; // Buat Jaga Jaga Kalau ke Pakai di kemudian hari
    this.erroLogin = erroLogin ?? false;
  }
  
}
