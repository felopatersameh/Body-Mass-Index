import 'package:flutter/material.dart';

BoxDecoration shape({
  required double radius,
}) =>
    BoxDecoration(
        gradient: const LinearGradient(
            colors: <Color>[
              Color.fromRGBO(164, 97, 219, 1),
              Color(0xFF8F6FDA),
              Color(0xFF618DD8),
              Colors.blueAccent,
            ],
            tileMode: TileMode.decal,
            begin: Alignment.centerLeft,
            end: AlignmentDirectional.centerEnd),
        borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(radius), top: Radius.zero));

extension DesignExtensionName on Widget {
  Widget design() => Container(
        width: double.infinity,
        decoration: shape(radius: 200),
        child: Opacity(
          opacity: .9,
          child: Container(
            width: double.infinity,
            decoration: shape(radius: 150),
            child: Opacity(
              opacity: .8,
              child: Container(
                  width: double.infinity,
                  decoration: shape(radius: 110),
                  child: this),
            ),
          ),
        ),
      );
}
