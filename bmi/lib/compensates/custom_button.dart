import 'package:flutter/material.dart';

Widget customButton({
  VoidCallback? press,
  Color? color,
  Gradient? gradient,
  required EdgeInsetsGeometry padding,
  required BorderRadius border,
  required IconData icon,
}) =>
    InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: border, gradient: gradient),
        padding: padding,
        child: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
