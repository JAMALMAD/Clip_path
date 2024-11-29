
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:leader_board/core/const/color/color.dart';
import 'package:leader_board/route/approute.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context,child)=>
     GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    scaffoldBackgroundColor: AppColor.orangeColor,
    useMaterial3: true,
    ),
      getPages: Approute.routes,
      initialRoute: Approute.leaderBoard,
    ));
  }
}