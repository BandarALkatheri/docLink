import 'package:DocLink/core/theme/style.dart';
import 'package:DocLink/features/onboarding/widgets/custom_button_started.dart';
import 'package:DocLink/features/onboarding/widgets/doclink_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_Image_and_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
      child: Column(children: [
        // ? -> DocLinkLogoAndName
        const DocLinkLogoAndName(),
        SizedBox(
          height: 30.h,
        ),

        // ? -> DoctorImageAndText

        const DoctorImageAndText(),

        // ? -> CustomButtonstarted

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Column(
            children: [
              Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: TextStyles.font13GrayRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              const CustomButtonstarted()
            ],
          ),
        )
      ]),
    )));
  }
}
