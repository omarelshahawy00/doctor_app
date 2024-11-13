import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font12GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font12GrayRegular,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMedium.copyWith(height: 1.3.h),
          ),
        ],
      ),
    );
  }
}
