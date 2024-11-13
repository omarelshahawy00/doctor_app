import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        routerConfig: appRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.primaryBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
