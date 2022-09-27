import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myanmar_sar_kyi_tite/helpers/init_dependencies.dart';
import 'package:myanmar_sar_kyi_tite/pages/dashboard.dart';
import 'package:myanmar_sar_kyi_tite/pages/home.dart';

import 'pages/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      
      designSize: const Size(360, 710),
      builder: (context, child) => GetMaterialApp(
        initialBinding: initDependencies(),
        debugShowCheckedModeBanner: false,
        home: MyDashBoard(),
      ),
    );
  }
}
