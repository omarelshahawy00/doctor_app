import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).push(Routes.loginView);
      },
      style: TextButton.styleFrom(
        fixedSize: Size(311.w, 52.h),
        backgroundColor: ColorsManager.primaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Rounds the button corners
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16White600Weight,
      ),
    );
  }
}
