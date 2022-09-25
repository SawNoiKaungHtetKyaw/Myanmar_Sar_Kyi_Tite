import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myanmar_sar_kyi_tite/helpers/constants.dart';
import 'package:myanmar_sar_kyi_tite/pages/favoutite.dart';

import 'download.dart';
import 'history.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  Widget _body = Favourite();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Constants.bg_grey,
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 100.h,
            backgroundColor: Constants.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            )),
            flexibleSpace: Container(
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Text(
                        "Library",
                        style: TextStyle(
                            fontSize: Constants.titleText,
                            color: Constants.text_white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: TabBar(
                          labelStyle: TextStyle(fontSize: Constants.normalText),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Constants.accent_bar,
                          tabs: [
                            Tab(
                              text: "Favaurite",
                            ),
                            Tab(
                              text: "History",
                            ),
                            Tab(
                              text: "Download",
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SafeArea(
              child: TabBarView(
            children: [
              _body = Favourite(),
              _body = History(),
              _body = Download()
            ],
          )),
        ));
  }
}
 


// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:myanmar_sar_kyi_tite/helpers/constants.dart';

// import '../helpers/custom_widget.dart';

// class Library extends StatefulWidget {
//   const Library({Key? key}) : super(key: key);

//   @override
//   State<Library> createState() => _LibraryState();
// }

// class _LibraryState extends State<Library> {
//   CustomWidget customWidget = new CustomWidget();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               width: 360.w,
//               height: 100.h,
//               padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
//               decoration: BoxDecoration(
//                   color: Constants.primary,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20.r),
//                     bottomRight: Radius.circular(20.r),
//                   )),
//               child: Column(
//                 children: [
//                   customWidget.textWidget("Library", Constants.titleText,
//                       Constants.text_white, FontWeight.bold),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   TabBar(tabs: [
//                     Tab(
//                       text: "download",
//                     ),
//                     Tab(
//                       text: "favourite",
//                     ),
//                     Tab(
//                       text: "History",
//                     ),
//                   ]),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _choose("Favourite", 0),
//                       _choose("History", 1),
//                       _choose("Download", 2),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _choose(text, index) {
//     var selected = 0;
//     return Column(
//       children: [
//         InkWell(
//           onTap: () {
//             print(selected);
//             setState(() {
//               selected = index;
//             });
//           },
//           child: Container(
//             child: customWidget.textWidget(
//                 text, Constants.normalText, Constants.bg_grey, FontWeight.w500),
//           ),
//         ),
//         SizedBox(
//           height: 5.h,
//         ),
//         index == selected
//             ? Container(
//                 width: 50.w,
//                 height: 2.h,
//                 color: Constants.accent_bar,
//               )
//             : Container()
//       ],
//     );
//   }
// }
