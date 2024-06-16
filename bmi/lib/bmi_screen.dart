
import 'compensates/part_up.dart';
import 'cubit/app_cubit.dart';
import 'cubit/app_states.dart';
import 'compensates/data_information.dart';
import 'compensates/part_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'compensates/design.dart';

var widthController = TextEditingController.fromValue(const TextEditingValue());
var heightController =
    TextEditingController.fromValue(const TextEditingValue());
var ageController = TextEditingController.fromValue(const TextEditingValue());

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
              body: SafeArea(
                  child: SingleChildScrollView(
                reverse: false,
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const PartInUp(),
                        PartBody(
                            widthController: widthController,
                            heightController: heightController,
                            ageController: ageController)
                      ],
                    ).design(),
                    BmiResultWidget(
                      gender: AppCubit.get(context).gender!,
                      resultBmi:
                          AppCubit.get(context).calculateResult.toString(),
                      resultHealthy: AppCubit.get(context).healthBody,
                    )
                  ],
                ),
              )),
            ));
  }
}
