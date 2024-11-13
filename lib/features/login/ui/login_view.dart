import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/ui/widgets/already_have_account.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36.h),
                const AppTextFormField(hintText: 'Email'),
                verticalSpace(18),
                AppTextFormField(
                  hintText: 'Password',
                  isObscureText: isObsecureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObsecureText = !isObsecureText;
                      });
                    },
                    child: Icon(isObsecureText
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
                verticalSpace(10),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.font12BlueRegular,
                  ),
                ),
                verticalSpace(40),
                AppTextButton(
                  onPressed: () {},
                  buttonText: 'Login',
                ),
                verticalSpace(20),
                const TermsAndConditions(),
                verticalSpace(30),
                const Center(
                  child: AlreadyHaveAccount(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
