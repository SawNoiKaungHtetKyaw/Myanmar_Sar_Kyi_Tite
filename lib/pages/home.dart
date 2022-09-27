import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myanmar_sar_kyi_tite/controller/author_controller.dart';
import 'package:myanmar_sar_kyi_tite/controller/dashboard_controller.dart';
import 'package:myanmar_sar_kyi_tite/helpers/constants.dart';
import 'package:myanmar_sar_kyi_tite/helpers/custom_widget.dart';
import 'package:myanmar_sar_kyi_tite/pages/author_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

final DashboardController dashboardController = Get.find();
final AuthorController authorController = Get.find();

class _HomeState extends State<Home> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    CustomWidget customWidget = CustomWidget();
    return Scaffold(
      backgroundColor: Constants.bg_grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Appbar
              Container(
                width: 360.w,
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Menu Icon
                    Icon(
                      Icons.menu,
                      size: 28,
                    ),

                    //Image
                    Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ),
              ),

              //Application Name and Slogan
              Container(
                width: 280.w,
                height: 70.h,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                    color: Constants.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3.r),
                      topRight: Radius.circular(40.r),
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(3.r),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customWidget.textWidget(
                        "Myanmar Sar Kyi Tite",
                        Constants.titleText,
                        Constants.text_white,
                        FontWeight.bold),
                    SizedBox(
                      height: 3.h,
                    ),
                    customWidget.textWidget(
                        "Books make your life easier.",
                        Constants.normalText,
                        Constants.text_white,
                        FontWeight.w400),
                  ],
                ),
              ),

              SizedBox(
                height: 10.h,
              ),

              //body
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    //Search Bar
                    customWidget.searchBar(_searchController),

                    SizedBox(
                      height: 10.h,
                    ),

                    //Author Box
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customWidget.textWidget(
                                  "Authors",
                                  Constants.titleText,
                                  Constants.normal,
                                  FontWeight.bold),
                              InkWell(
                                onTap: () {
                                  dashboardController.changeTabIndex(1);
                                },
                                child: customWidget.textWidget(
                                    "See all",
                                    Constants.smallText,
                                    Constants.hint,
                                    FontWeight.w400),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 110.h,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: Constants.authors.length,
                                itemBuilder: (context, index) =>
                                    _authorCard(index, Constants.authors)),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),

                    //Books Box
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customWidget.textWidget(
                                  "Book",
                                  Constants.titleText,
                                  Constants.normal,
                                  FontWeight.bold),
                              GestureDetector(
                                onTap: () {
                                  dashboardController.changeTabIndex(2);
                                },
                                child: customWidget.textWidget(
                                    "See all",
                                    Constants.smallText,
                                    Constants.hint,
                                    FontWeight.w400),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 190.h,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: Constants.books.length,
                                itemBuilder: (context, index) => customWidget
                                    .bookCard(index, Constants.books, 10.w)),
                          )
                        ],
                      ),
                    ),

                    Divider(
                      thickness: 1.h,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),

                    //you may also like
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              customWidget.textWidget(
                                  "You may also like",
                                  Constants.titleText,
                                  Constants.normal,
                                  FontWeight.bold),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 300.h,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: Constants.books.length,
                                itemBuilder: (context, index) => customWidget
                                    .youMayAlsoLike(index, Constants.books)),
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _authorCard(index, author) {
    return InkWell(
      onTap: () {
        authorController.authorName.value = author[index].name;
        authorController.authorImage.value = author[index].image;
        Get.to(() => AuthorInfo());
      },
      child: Container(
        width: 85.w,
        height: 110.h,
        margin: EdgeInsets.only(right: 10.w),
        decoration: BoxDecoration(
            color: Constants.text_white,
            border: Border.all(color: Constants.primary),
            borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image
            Container(
              width: 75.w,
              height: 75.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(author[index].image),
                      fit: BoxFit.cover)),
            ),
            Text(
              author[index].name,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Constants.normal,
                  fontSize: Constants.normalText,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis),
            )
          ],
        ),
      ),
    );
  }
}
