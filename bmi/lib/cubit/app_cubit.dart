import 'package:bmi/cubit/appstates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InizlizationApp());

  static AppCubit get(context) => BlocProvider.of(context);


  String? gender = 'Male';
  void six({required String six}) {
    gender = six;
    emit(ChangeGenderApp());
  }

  var oldnumberage = 18;

  void changenumberage(var newnumber) {
    oldnumberage = newnumber;
    emit(ChangeAgeApp());
  }

  var oldnumberhieght = 150;

  void changenumberhieght(var newnumber) {
    oldnumberhieght = newnumber;
    emit(ChangHieghtApp());
  }

  var oldnumberwieght = 65;

  void changenumberwieght(var newnumber) {
    oldnumberwieght = newnumber;
    emit(ChangewieghtApp());
  }

  String healthBoody = '';
  double calculatbmi = 0.0;

  void calculaBodyMassIndex({
    required var inputhieght,
    required var inputage,
    required var inputwieght,
  }) {
    inputhieght = inputhieght / 100;
    calculatbmi = ((inputwieght) /
        (inputhieght * inputhieght)* (1 + 0.02 * (inputage - 20)));
    if (calculatbmi  < 18.5) {
      healthBoody = " Severe Thinness";
    } else if (calculatbmi < 25) {
      healthBoody = " Mild Thinness";
    } else if (calculatbmi < 30) {
      healthBoody = " Normal";
    } else if (calculatbmi < 35) {
      healthBoody = "Overweight";
    }
    calculatbmi =double.parse((calculatbmi).toStringAsFixed(2));
    emit(CalculaBodyMassIndexApp());
  }
}
