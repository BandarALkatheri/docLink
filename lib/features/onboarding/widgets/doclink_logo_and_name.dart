import 'package:DocLink/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLinkLogoAndName extends StatelessWidget {
  const DocLinkLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        SizedBox(
          width: 10.h,
        ),
        Text('DocLink', style: TextStyles.font24BlackBold)
      ],
    );
  }
}
