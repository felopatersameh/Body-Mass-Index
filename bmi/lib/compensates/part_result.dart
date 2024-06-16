import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';

class BmiResultWidget extends StatelessWidget {
  final String gender;
  final String resultBmi;
  final String resultHealthy;

  const BmiResultWidget({
    Key? key,
    required this.gender,
    required this.resultBmi,
    required this.resultHealthy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 25),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppStrings.gender, style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: 30,),
              Text(
                gender,
                style:  Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultHealthy,
                    style:  Theme.of(context).textTheme.labelMedium,
                    maxLines: 4,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                AppStrings.result,
                textAlign: TextAlign.center,
                style:  Theme.of(context).textTheme.labelLarge
              ),
              const SizedBox(height: 30,),
              Text(
                resultBmi,
                style: Theme.of(context).textTheme.labelMedium,
                maxLines: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
