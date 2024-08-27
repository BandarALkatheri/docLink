import 'package:doclink/core/routing/app_routes.dart';
import 'package:doclink/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DoclinkApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoclinkApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
// ? -> ScreenUtilInit is a widget used to initialize the settings for ScreenUtil.
// ? -> ScreenUtil is a library that helps make a Flutter application responsive across all screen sizes.
// ? -> ScreenUtilInit sets the basic design parameters and adjusts the measurements and scaling
// ? -> according to the current device's screen size, ensuring that the app appears correctly

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'doclink',
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: ColorsManager.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
