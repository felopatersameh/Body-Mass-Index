import 'package:bmi/cubit/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InizlizationApp());

  static AppCubit get(context) => BlocProvider.of(context);


  String? gender = 'Male';
  void six({required String six}) {
    gender = six;
    emit(ChangeGenderApp());
  }

  var numberAge = 18;

  void changNumberAge(var newNumber) {
    numberAge = newNumber;
    emit(ChangeAgeApp());
  }

  var numberHeight = 150;
// width , height
  void changeNumberHeight(var newNumber) {
    numberHeight = newNumber;
    emit(ChangHieghtApp());
  }

  var numberWidth = 65;

  void changeNumberWidth(var newNumber) {
    numberWidth = newNumber;
    emit(ChangewieghtApp());
  }

  String healthBody = '';
  double calculateResult = 0.0;

  void calculateBodyMassIndex({
    required var inputHeight,
    required var inputAge,
    required var inputWidth,
  }) {
    inputHeight = inputHeight / 100;
    calculateResult = ((inputWidth) /
        (inputHeight * inputHeight)* (1 + 0.02 * (inputAge - 20)));
    if (calculateResult  < 18.5) {
      healthBody = " Severe Thinness";
    } else if (calculateResult < 25) {
      healthBody = " Mild Thinness";
    } else if (calculateResult < 30) {
      healthBody = " Normal";
    } else if (calculateResult < 35) {
      healthBody = "Overweight";
    }
    calculateResult =double.parse((calculateResult).toStringAsFixed(2));
    emit(CalculaBodyMassIndexApp());
  }
}
