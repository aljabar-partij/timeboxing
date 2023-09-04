part of 'on_boarding_page_cubit.dart';

class OnBoardingPageState {
  late bool isFreshInstall;
  late bool isFreshLogin;
  late bool isLoading;

  OnBoardingPageState(
      {bool? isFreshInstall, bool? isLoading, bool? isFreshLogin}) {
    this.isFreshInstall = isFreshInstall ?? false;
    this.isFreshLogin = isFreshLogin ?? false;
    this.isLoading = isLoading ?? false;
  }
}
