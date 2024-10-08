import 'package:doclink/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class doclinkLogoAndName extends StatelessWidget {
  const doclinkLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        SizedBox(
          width: 10.h,
        ),
        Text('doclink', style: TextStyles.font24BlackBold)
      ],
    );
  }
}
