import 'package:flutter/material.dart';

Widget defultebuttom({
  VoidCallback? press,
  // required String name ,
  Color? color,
  Gradient? gradient,
  required EdgeInsetsGeometry panding,
  required BorderRadius border,
  required IconData icon,
}) =>
    InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: border, gradient: gradient),
        padding: panding,
        child: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
