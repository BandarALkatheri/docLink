import 'package:DocLink/core/routing/app_routes.dart';
import 'package:DocLink/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class Doclink extends StatelessWidget {
  final AppRouter appRouter;
  const Doclink({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'DocLink',
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
