part of 'login_form_cubit.dart';

class LoginFormState {
  // late bool isLogin; // Buat Jaga Jaga Kalau ke Pakai di kemudian hari
  late bool erroLogin;
  late bool isLoading;

  LoginFormState(
      {
      // bool? isLogin, // Buat Jaga Jaga Kalau ke Pakai di kemudian hari
      bool? erroLogin,
      bool? isLoading}) {
    // this.isLogin = isLogin ?? false; // Buat Jaga Jaga Kalau ke Pakai di kemudian hari
    this.erroLogin = erroLogin ?? false;
    this.isLoading = isLoading ?? false;
  }
}
