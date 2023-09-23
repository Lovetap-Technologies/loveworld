// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

rawMaterialButton(
  void Function()? onpressed,
  Widget child,
  Color color,
) {
  return RawMaterialButton(
      fillColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      constraints: const BoxConstraints.tightFor(
        height: 50,
        width: 130,
      ),
      onPressed: onpressed,
      child: child);
}

ExrawMaterialButton(
  void Function()? onpressed,
  Widget child,
  Color color,
) {
  return Row(
    children: [
      Expanded(
        child: RawMaterialButton(
            fillColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                25,
              ),
            ),
            constraints: const BoxConstraints.tightFor(
              height: 50,
              width: 130,
            ),
            onPressed: onpressed,
            child: child),
      ),
    ],
  );
}
