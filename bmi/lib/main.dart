import 'package:bmi/constant.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'cubit/app_cubit.dart';
import 'cubit/app_states.dart';
import 'bmi_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) =>
            MaterialApp(
              home: const BmiScreen(),
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                textTheme: TextTheme(
                    bodyLarge: TextStyle(
                        color: Colors.white,
                        fontFamily: AppStrings.fontFamily,
                        fontSize: 30,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w900),
                    bodyMedium: TextStyle(
                        color: Colors.white,
                        fontFamily: AppStrings.fontFamily,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    labelLarge: TextStyle(
                        color: const Color.fromRGBO(130, 34, 208, 1),
                        fontFamily: AppStrings.fontFamily,
                        fontSize: 20,
                        letterSpacing: 4,
                        fontWeight: FontWeight.w900),
                  labelMedium: TextStyle(
                      color: const Color.fromRGBO(4, 13, 137, 1),
                      fontFamily: AppStrings.fontFamily,
                      fontSize: 20,
                      letterSpacing: 4,
                      fontWeight: FontWeight.w500),
                ),
                scaffoldBackgroundColor: Colors.white.withOpacity(.8),
              ),
            ),
      ),
    );
  }
}
