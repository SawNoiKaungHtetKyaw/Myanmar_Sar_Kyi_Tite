import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';

class CustomWidget {
  Widget textWidget(
      String text, double fontsize, Color color, FontWeight fontweight) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight),
    );
  }

  Widget textFieldWidget(text, controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400, fontSize: Constants.normalText),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.w, color: Constants.primary),
              borderRadius: BorderRadius.all(Radius.circular(25.r))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.w, color: Constants.primary),
              borderRadius: BorderRadius.all(Radius.circular(25.r)))),
    );
  }

  Widget searchBar(controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400, fontSize: Constants.normalText),
          prefixIcon: Icon(
            Icons.search,
            color: Constants.primary,
          ),
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.w, color: Constants.primary),
              borderRadius: BorderRadius.all(Radius.circular(25.r))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.w, color: Constants.primary),
              borderRadius: BorderRadius.all(Radius.circular(25.r)))),
    );
  }

  Widget bookCard(index, book) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Column(
        children: [
          Container(
            width: 100.w,
            height: 140.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r),
                ),
                image: DecorationImage(
                    image: AssetImage(book[index].image), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 5.h,
          ),

          //book title
          SizedBox(
            width: 100.w,
            child: Text(
              "${Constants.books[index].name}",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: Constants.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: Constants.normalText),
            ),
          )
        ],
      ),
    );
  }

  Widget youMayAlsoLike(index, book) {
    return Container(
      width: 340.w,
      height: 130.h,
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
          color: Constants.text_white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Constants.primary)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.w),
            width: 60.w,
            height: 85.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(book[index].image), fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${book[index].name}",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: Constants.normal,
                    fontSize: Constants.titleText,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Author Name | Book Type",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Constants.primary,
                              fontSize: Constants.smallText,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "${Constants.personalInfo[index].text}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          textScaleFactor: 0.8,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Constants.extraSmallText,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Constants.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r))),
                      onPressed: () {},
                      child: textWidget("Read Now", Constants.normalText,
                          Constants.text_white, FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget bottomNavBar() {
    return BottomNavigationBar(items: []);
  }
}
