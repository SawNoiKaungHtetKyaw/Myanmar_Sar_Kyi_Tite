import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myanmar_sar_kyi_tite/controller/author_controller.dart';
import 'package:myanmar_sar_kyi_tite/controller/book_controller.dart';
import 'package:readmore/readmore.dart';

import '../helpers/constants.dart';
import '../helpers/custom_widget.dart';

class AuthorInfo extends StatefulWidget {
  const AuthorInfo({Key? key}) : super(key: key);

  @override
  State<AuthorInfo> createState() => _AuthorInfoState();
}

class _AuthorInfoState extends State<AuthorInfo> {
  CustomWidget customWidget = CustomWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 274.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [
                    0.6,
                    0.9
                  ],
                  colors: [
                    Constants.secondary,
                    Constants.primary,
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Constants.text_white,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 163.h),
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Container(
                  width: double.infinity,
                  height: 530.h,
                  decoration: BoxDecoration(color: Constants.text_white),
                  child: Padding(
                    padding: EdgeInsets.only(top: 59.h),
                    child: Column(
                      children: [
                        customWidget.textWidget(
                            authorController.authorName.value,
                            Constants.titleText,
                            Constants.normal,
                            FontWeight.bold),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 15.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ReadMoreText(
                                    "${Constants.personalInfo[1].text}",
                                    moreStyle: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    lessStyle: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.justify,
                                    trimLines: 7,
                                    trimMode: TrimMode.Line,
                                  ),
                                  Divider(
                                    color: Constants.bg_grey,
                                    height: 15.h,
                                    thickness: 1.w,
                                  ),
                                  customWidget.textWidget(
                                      "Chit Oo Nyo",
                                      Constants.titleText,
                                      Constants.text_white,
                                      FontWeight.bold),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    height: 180.h,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: Constants.books.length,
                                        itemBuilder: ((context, index) {
                                          return customWidget.bookCard(
                                              index, Constants.books, 10);
                                        })),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 0.w,
                    right: 0.w,
                    top: -130.h,
                    child: CircleAvatar(
                      backgroundColor: Constants.secondary,
                      radius: 92.r,
                    )),
              ],
            ),
          ),
          Positioned(
            left: 0.w,
            right: 0.w,
            top: 52.h,
            child: CircleAvatar(
              radius: 75.r,
              child: ClipOval(
                  child: Image.asset(
                authorController.authorImage.value,
                width: 150.h,
                height: 150.h,
                fit: BoxFit.fill,
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
