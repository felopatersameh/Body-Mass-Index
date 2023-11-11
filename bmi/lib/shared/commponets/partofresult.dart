import 'package:flutter/cupertino.dart';

Widget partResult(
{
  required String gender,
  required String resultbmi ,
  required String resulthealthy,
}

    ) => Padding(
  padding: const EdgeInsets.all(19.0),
  child: Row(
    children: [
      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Gender\n',
                style: TextStyle(
                    color:
                    Color.fromRGBO(130, 34, 208, 1),
                    fontFamily: 'OldStandard',
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
            Text(gender,
                style: const TextStyle(
                  color: Color.fromRGBO(4, 13, 137, 1),
                  fontFamily: 'OldStandard',
                  fontSize: 20,
                )),
          ],
        ),
      ),
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                resulthealthy,
                style: const TextStyle(
                  color: Color.fromRGBO(4, 13, 137, 1),
                  fontFamily: 'OldStandard',
                  fontSize: 19,
                ),
                maxLines: 4,
              ),
            ],
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Result\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color:
                    Color.fromRGBO(130, 34, 208, 1),
                    fontFamily: 'OldStandard',
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
            Text( resultbmi,
                style: const TextStyle(
                  color:
                  Color.fromRGBO(4, 13, 137, 1),
                  fontFamily: 'OldStandard',
                  fontSize: 20,
                ),
                maxLines: 1),
          ],
        ),
      ),
    ],
  ),
);