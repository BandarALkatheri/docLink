import 'package:doclink/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithSoclMedia extends StatelessWidget {
  const LoginWithSoclMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 46.h,
          width: 46.w,
          decoration: const BoxDecoration(
            color: ColorsManager.lighterGray, // لون الخلفية الرمادي
            shape: BoxShape.circle, // تحديد الشكل ليكون دائري
          ),
          child: Image.asset(
            'assets/images/logoG.png', // المسار إلى الصورة
            fit: BoxFit.contain, // لجعل الصورة تغطي الدائرة بالكامل
          ),
        ),
        Container(
          height: 46.h,
          width: 46.w,
          decoration: const BoxDecoration(
            color: ColorsManager.lighterGray, // لون الخلفية الرمادي
            shape: BoxShape.circle, // تحديد الشكل ليكون دائري
          ),
          child: Image.asset(
            'assets/images/logoA.png', // المسار إلى الصورة
            fit: BoxFit.contain, // لجعل الصورة تغطي الدائرة بالكامل
          ),
        ),
        Container(
          height: 46.h,
          width: 46.w,
          decoration: const BoxDecoration(
            color: ColorsManager.lighterGray, // لون الخلفية الرمادي
            shape: BoxShape.circle, // تحديد الشكل ليكون دائري
          ),
          child: Image.asset(
            'assets/images/logoF.png', // المسار إلى الصورة
            fit: BoxFit.contain, // لجعل الصورة تغطي الدائرة بالكامل
          ),
        )
      ],
    );
  }
}
