import 'package:cashero_ui_later_merge2/core/go_router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      splitScreenMode: true,
      ensureScreenSize: true,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner:false,
        routerConfig: AppRouter.router,
        title: 'Cashero Dev',
      ),
    );
  }
}
