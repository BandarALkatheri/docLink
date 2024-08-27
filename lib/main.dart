import 'package:DocLink/core/routing/app_routes.dart';
import 'package:DocLink/doclink.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  // setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  // await ScreenUtil.ensureScreenSize();
  // await checkIfLoggedInUser();
  runApp(Doclink(
    appRouter: AppRouter(),
  ));
}
