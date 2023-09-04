import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'on_boarding_page_state.dart';

class OnboardingpageCubit extends Cubit<OnBoardingPageState> {
  OnboardingpageCubit() : super(OnBoardingPageState());

  void mainFirst() async{
    emit(OnBoardingPageState(isLoading: true));
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool isFresh = prefs.getBool('isFresh') ?? true;
      if (isFresh) {
        await prefs.setBool('isFresh', false);
        emit(OnBoardingPageState(isFreshInstall: true, isLoading: false));
      } else {
        emit(OnBoardingPageState(isFreshInstall: false, isLoading: false));
      }
    } catch (eror) {
      print(eror);
    }
    void LoginPage() async{
      
    }

  }

}
