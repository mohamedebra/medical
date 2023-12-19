import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical/core/theming/colors.dart';

class TextStyles{
  static TextStyle font24BlackWeight700 = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700
  );
  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      color: ColorsManager.mainColors,
      fontWeight: FontWeight.bold
  );
  static TextStyle font13grayWeight400 = TextStyle(
      fontSize: 13.sp,
      color: ColorsManager.gray,
      fontWeight: FontWeight.w400
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500
  );
}