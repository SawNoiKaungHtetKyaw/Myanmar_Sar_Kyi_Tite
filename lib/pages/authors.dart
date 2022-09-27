import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/constants.dart';
import '../helpers/custom_widget.dart';

class Authors extends StatefulWidget {
  const Authors({Key? key}) : super(key: key);

  @override
  State<Authors> createState() => _AuthorsState();
}

class _AuthorsState extends State<Authors> {
  CustomWidget customWidget = CustomWidget();
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bg_grey,
      body: SafeArea(
        child: Column(children: [
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
                        "Authors",
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
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.sm),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Constants.authors.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        customWidget.authorCard(index, Constants.authors),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    );
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
