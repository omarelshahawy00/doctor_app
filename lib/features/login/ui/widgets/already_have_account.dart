import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style:
                TextStyles.font13DarkBlueMedium.copyWith(color: Colors.black54),
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyles.font13BlueRegular,
          ),
        ],
      ),
    );
  }
}
