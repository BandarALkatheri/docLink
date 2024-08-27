import 'package:doclink/core/helpers/extension.dart';
import 'package:doclink/core/theme/colors.dart';
import 'package:doclink/core/theme/style.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';

class CustomButtonstarted extends StatelessWidget {
  const CustomButtonstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}
