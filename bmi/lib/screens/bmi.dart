import 'package:bmi/cubit/appcubite.dart';
import 'package:bmi/cubit/appstates.dart';
import 'package:bmi/shared/commponets/partofresult.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../shared/commponets/defultebuttom.dart';
import '../shared/commponets/defultetinputnumbers.dart';
import '../shared/commponets/design.dart';

var weightcontroler = TextEditingController.fromValue(const TextEditingValue());
var hieghtcontroler = TextEditingController.fromValue(const TextEditingValue());
var agecontroler = TextEditingController.fromValue(const TextEditingValue());
var keyform = GlobalKey<FormState>();

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
              body: SafeArea(
                  child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: shap(radius: 400),
                          child: Opacity(
                            opacity: .77,
                            child: Container(
                              width: double.infinity,
                              decoration: shap(radius: 170),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 30),
                                  const Text('Body Mass Index\n',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'OldStandard',
                                          fontSize: 30,
                                          letterSpacing: 4,
                                          fontWeight: FontWeight.w900)),
                                  const Text('Gender',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'OldStandard',
                                        fontSize: 20,
                                      )),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: defultebuttom(
                                              icon: Icons.female_sharp,
                                              border: const BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(50),
                                                  topRight:
                                                      Radius.circular(50)),
                                              color: const Color.fromRGBO(
                                                  164, 97, 219, 1),
                                              panding: const EdgeInsets.all(30),
                                              press: () {
                                                AppCubit.get(context)
                                                    .six(six: 'Female');
                                              })),
                                      Expanded(
                                          child: defultebuttom(
                                              icon: Icons.male_sharp,
                                              border: const BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(50),
                                                  topLeft: Radius.circular(50)),
                                              color: Colors.blueAccent,
                                              panding: const EdgeInsets.all(30),
                                              press: () {
                                                AppCubit.get(context)
                                                    .six(six: 'Male');
                                              })),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(50.0),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          inputenumber(
                                            minvalue: 2,
                                            maxvalue: 100,
                                            writting: (value) {
                                              AppCubit.get(context)
                                                  .changenumberage(value);
                                            },
                                            name: 'AGE',
                                            number: AppCubit.get(context)
                                                .oldnumberage,
                                          ),
                                          inputenumber(
                                            minvalue: 3,
                                            maxvalue: 500,
                                            writting: (value) {
                                              AppCubit.get(context)
                                                  .changenumberwieght(value);
                                            },
                                            name: 'WEIGHT',
                                            number: AppCubit.get(context)
                                                .oldnumberwieght,
                                          ),
                                          inputenumber(
                                            minvalue: 10,
                                            maxvalue: 200,
                                            writting: (value) {
                                              AppCubit.get(context)
                                                  .changenumberhieght(value);
                                            },
                                            name: 'HIGHT',
                                            number: AppCubit.get(context)
                                                .oldnumberhieght,
                                          ),
                                          defultebuttom(
                                              press: () {
                                                AppCubit.get(context)
                                                    .calculaBodyMassIndex(
                                                  inputage:
                                                      AppCubit.get(context)
                                                          .oldnumberage,
                                                  inputhieght:
                                                      AppCubit.get(context)
                                                          .oldnumberhieght,
                                                  inputwieght:
                                                      AppCubit.get(context)
                                                          .oldnumberwieght,
                                                );
                                              },
                                              gradient: const LinearGradient(
                                                  colors: <Color>[
                                                    Color(0xFF8F6FDA),
                                                    Color(0xFF618DD8),
                                                  ]),
                                              panding: const EdgeInsets.all(20),
                                              border: BorderRadius.circular(50),
                                              icon: Icons.calculate_rounded)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      partResult(
                          gender: AppCubit.get(context).gender!,
                          resultbmi:
                              AppCubit.get(context).calculatbmi.toString() ,
                        resulthealthy: AppCubit.get(context).healthBoody,

                      )
                    ],
                  ),
                ],
              )),
            ));
  }
}
