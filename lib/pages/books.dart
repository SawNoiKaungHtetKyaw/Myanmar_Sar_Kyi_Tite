import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myanmar_sar_kyi_tite/helpers/custom_widget.dart';

import '../helpers/constants.dart';

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  CustomWidget customWidget = CustomWidget();
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bg_grey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 360.w,
              height: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  color: Constants.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                      child: customWidget.textWidget(
                          "Books",
                          Constants.titleText,
                          Constants.text_white,
                          FontWeight.bold)),
                  SizedBox(
                    height: 5.h,
                  ),
                  customWidget.searchBar(_searchController),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: Constants.books.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.59.h, crossAxisCount: 3),
                  itemBuilder: ((context, index) {
                    return customWidget.bookCard(index, Constants.books, 0);
                  })),
            )
          ],
        ),
      ),
    );
  }
}
