import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorsManager.primaryBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
