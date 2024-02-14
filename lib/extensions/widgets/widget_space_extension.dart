import 'package:flutter/cupertino.dart';

extension Space on Widget {
  Widget padding([EdgeInsetsGeometry value = const EdgeInsets.only()]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
}
