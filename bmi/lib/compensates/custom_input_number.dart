import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

Widget inputNumber({
  required var number,
  required int maxvalue,
  required int minvalue,
  required String name,
  required ValueChanged<int> valueChanged,
}) =>
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(name,
              style: const TextStyle(
                  color: Colors.white, fontSize: 27, fontFamily: 'OldStandard')),
          const SizedBox(
            height: 10,
          ),
          NumberPicker(
            selectedTextStyle:
                const TextStyle(color: Colors.lime, fontSize: 23 , fontFamily: 'OldStandard', fontWeight: FontWeight.w200 ),
            textStyle: const TextStyle( fontFamily: 'OldStandard', letterSpacing: 2,),
            itemWidth: 50,
            itemCount:5,
            axis: Axis.horizontal,
            infiniteLoop: true,
            haptics: true,
            decoration: BoxDecoration(border: Border.all(color: Colors.lime)),
            onChanged: valueChanged,
            minValue: 3,
            maxValue: maxvalue,
            value: number,
          )
        ],
      ),
    );

