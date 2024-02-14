
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizes {

  static getTopBarHeight(context) {
    return MediaQuery.of(context).viewPadding.top - 8.h;
  }

}