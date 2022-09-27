import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myanmar_sar_kyi_tite/helpers/constants.dart';
import 'package:myanmar_sar_kyi_tite/helpers/custom_widget.dart';
import 'package:readmore/readmore.dart';

class BookInfo extends StatefulWidget {
  const BookInfo({Key? key}) : super(key: key);

  @override
  State<BookInfo> createState() => _BookInfoState();
}

CustomWidget customWidget = CustomWidget();

class _BookInfoState extends State<BookInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bg_grey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 24.sp,
                        color: Constants.normal,
                      )),
                  Row(
                    children: [
                      customWidget.textWidget(
                          "Book Information",
                          Constants.titleText,
                          Constants.normal,
                          FontWeight.bold),
                      SizedBox(width: 100.w)
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60.h),
                    child: Container(
                      width: double.infinity,
                      height: 130.h,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Constants.primary, width: 2.w),
                        color: Constants.text_white,
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 130.w, top: 10.h, right: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customWidget.textWidget(
                                bookController.bookName.toString(),
                                Constants.titleText,
                                Constants.normal,
                                FontWeight.bold),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Authors - ${Constants.authors[0].name}",
                              style: TextStyle(
                                  color: Constants.primary,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 14.sp),
                              textScaleFactor: 0.9,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Type - Romance",
                              style: TextStyle(
                                  color: Constants.primary, fontSize: 15.sp),
                              textScaleFactor: 0.9,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 35.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r)),
                                    border: Border.all(
                                        color: Constants.primary, width: 2)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.favorite_outline_outlined,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      width: 110.w,
                      height: 160.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5.r),
                            topRight: Radius.circular(5.r)),
                      ),
                      child: Image.asset(
                        "${bookController.bookImage}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //  ^^^^ this is book line
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              customWidget.textWidget("About Book", Constants.titleText,
                  Constants.normal, FontWeight.bold),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReadMoreText(
                        "${Constants.personalInfo[2].text}",
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                        textAlign: TextAlign.justify,
                        moreStyle: TextStyle(color: Constants.primary),
                        lessStyle: TextStyle(color: Constants.primary),
                      ),
                      Divider(
                        height: 20.h,
                        thickness: 1.5.sm,
                        color: Constants.primary,
                      ),
                      customWidget.textWidget(
                          Constants.authors[0].name.toString() + "'s Books",
                          Constants.titleText,
                          Constants.normal,
                          FontWeight.bold),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        height: 180.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Constants.books.length,
                            itemBuilder: (context, index) {
                              return customWidget.bookCard(
                                  index, Constants.books, 10);
                            }),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55.h,
                decoration: BoxDecoration(
                    color: Constants.primary,
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                child: Center(
                  child: Text(
                    "Read Now",
                    style: TextStyle(
                        color: Constants.text_white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
