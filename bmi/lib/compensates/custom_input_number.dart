import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';



class NumberInputWidget extends StatelessWidget {
  final int number;
  final int maxvalue;
  final int minvalue;
  final String name;
  final ValueChanged<int> valueChanged;

  const NumberInputWidget({
    Key? key,
    required this.number,
    required this.maxvalue,
    required this.minvalue,
    required this.name,
    required this.valueChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(name, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 10),
          NumberPicker(
            selectedTextStyle:Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24),
            textStyle: Theme.of(context).textTheme.bodyMedium,
            itemWidth: 50,
            itemCount: 5,
            axis: Axis.horizontal,
            infiniteLoop: true,
            haptics: true,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lime,width: 3),
            ),
            onChanged: valueChanged,
            minValue: minvalue, // Updated to use the minvalue variable
            maxValue: maxvalue,
            value: number,
          ),
        ],
      ),
    );
  }
}
