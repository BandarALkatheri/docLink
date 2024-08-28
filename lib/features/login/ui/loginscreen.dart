import 'package:doclink/core/helpers/spacing.dart';
import 'package:doclink/core/theme/colors.dart';
import 'package:doclink/core/theme/style.dart';
import 'package:doclink/core/widgets/app_text_button.dart';
import 'package:doclink/core/widgets/app_text_form_field.dart';
import 'package:doclink/features/login/ui/widget/dont_have_account_text.dart';
import 'package:doclink/features/login/ui/widget/login_with_socl_media.dart';
import 'package:doclink/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:doclink/features/login/ui/widget/text_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ? -> head Welcome Back.

                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),

                // ? -> body email & pasword
                //
                Column(
                  children: [
                    AppTextFormField(
                      hintText: 'email',
                      validator: (p0) {},
                    ),
                    verticalSpace(8),
                    AppTextFormField(
                      isObscureText: obscure,
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                          child: Icon(
                            obscure ? Icons.visibility_off : Icons.visibility,
                          )),
                      hintText: 'password',
                      validator: (p0) {},
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {},
                    ),
                    verticalSpace(40),
                    const TextDivider(
                      text: 'Or sign in with',
                    ),
                    verticalSpace(40),
                    const LoginWithSoclMedia(),
                    verticalSpace(40),
                    const TermsAndConditionsText(),
                    verticalSpace(40),
                    const DontHaveAccountText(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  /*
  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
  */
}
