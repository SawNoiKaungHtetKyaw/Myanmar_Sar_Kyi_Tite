import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/constants.dart';
import '../helpers/custom_widget.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  CustomWidget customWidget = new CustomWidget();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              //bg of green Color
              Container(
                width: 360.w,
                height: 250.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                color: Constants.primary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Login Text
                    customWidget.textWidget("Register", Constants.bigTitleText,
                        Constants.text_white, FontWeight.bold),

                    SizedBox(
                      height: 10.h,
                    ),

                    //Welcome Text
                    customWidget.textWidget(
                        "Please register!",
                        Constants.titleText,
                        Constants.text_white,
                        FontWeight.w500),

                    SizedBox(
                      height: 80.h,
                    )
                  ],
                ),
              ),

              //bg of form
              Container(
                margin: EdgeInsets.only(top: 220.h),
                width: 360.w,
                height: 537.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                decoration: BoxDecoration(
                    color: Constants.bg_grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    )),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Container of Form Widget
                      Container(
                        width: 320.w,
                        height: 250.h,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(
                            color: Constants.text_white,
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Constants.primary, width: 1.5.w)),

                        //From
                        child: Form(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //TextField of Username
                            customWidget.textFieldWidget(
                                "Username", _usernameController),

                            SizedBox(
                              height: 5.h,
                            ),

                            //TextField of Email Or Phone
                            customWidget.textFieldWidget(
                                "Email Or Phone", _emailController),

                            SizedBox(
                              height: 5.h,
                            ),

                            //TextField of Password
                            customWidget.textFieldWidget(
                                "Password", _passwordController),

                            SizedBox(
                              height: 5.h,
                            ),

                            //TextField of Password
                            customWidget.textFieldWidget(
                                "RE-Password", _repasswordController)
                          ],
                        )),
                      ),

                      SizedBox(
                        height: 35.h,
                      ),

                      //Login Button
                      SizedBox(
                        width: 340.w,
                        height: 50.h,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Constants.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r))),
                            child: customWidget.textWidget(
                                "Register",
                                Constants.titleText,
                                Constants.text_white,
                                FontWeight.bold)),
                      ),

                      SizedBox(
                        height: 35.h,
                      ),

                      //If You don't have account? Click this text and register.
                      InkWell(
                        onTap: () {},
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "I'm already a member!",
                              style: TextStyle(
                                color: Constants.hint,
                                fontSize: Constants.normalText,
                              )),
                          TextSpan(
                              text: "\tLogin",
                              style: TextStyle(
                                color: Constants.primary,
                                fontSize: Constants.normalText,
                              )),
                        ])),
                      )
                    ]),
              ),

              //Image
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150.h,
                    ),
                    Container(
                      width: 140.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          color: Constants.bg_grey, shape: BoxShape.circle),
                      child: Center(
                        child: Container(
                          width: 120.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            color: Constants.text_white,
                            shape: BoxShape.circle,
                            image: null,
                          ),
                          child: Center(
                              child: Text(
                            "Choose Image",
                            style: TextStyle(
                              fontSize: Constants.normalText,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
