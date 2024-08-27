import 'package:doclink/core/routing/app_routes.dart';
import 'package:doclink/doclink.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  // setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  // await ScreenUtil.ensureScreenSize();
  // await checkIfLoggedInUser();
  runApp(DoclinkApp(
    appRouter: AppRouter(),
  ));
}
