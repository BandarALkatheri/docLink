import 'package:doclink/core/theme/colors.dart';
import 'package:doclink/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextDivider extends StatelessWidget {
  final String? text;

  const TextDivider({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            // Adds right margin
            thickness: 1,
            color: ColorsManager.lighterGray,
          ),
        ),
        Text(
          text.toString(),
          style: TextStyles.font13GrayRegular.copyWith(fontSize: 12.sp),
        ),
        const Expanded(
          child: Divider(
            thickness: 1,
            color: ColorsManager.lighterGray,
          ),
        ),
      ],
    );
  }
}
