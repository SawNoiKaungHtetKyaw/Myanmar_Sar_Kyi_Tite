import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myanmar_sar_kyi_tite/helpers/constants.dart';
import 'package:myanmar_sar_kyi_tite/helpers/custom_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  CustomWidget customWidget = new CustomWidget();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                height: 225.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                color: Constants.primary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Login Text
                    customWidget.textWidget("Login", Constants.bigTitleText,
                        Constants.text_white, FontWeight.bold),
      
                    SizedBox(
                      height: 10.h,
                    ),
      
                    //Welcome Text
                    customWidget.textWidget("Welcome Back!", Constants.titleText,
                        Constants.text_white, FontWeight.w500),
      
                    SizedBox(
                      height: 45.h,
                    )
                  ],
                ),
              ),
      
              //bg of form
              Container(
                margin: EdgeInsets.only(top: 173.h),
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
                        height: 150.h,
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
                            //TextField of Email Or Phone
                            customWidget.textFieldWidget(
                                "Email Or Phone", _emailController),
      
                            SizedBox(
                              height: 5.h,
                            ),
      
                            //TextField of Password
                            customWidget.textFieldWidget(
                                "Password", _passwordController)
                          ],
                        )),
                      ),
      
                      SizedBox(
                        height: 35.h,
                      ),
      
                      //Text of Forgot Password
                      customWidget.textWidget("Forgot Password?",
                          Constants.normalText, Constants.hint, FontWeight.w400),
      
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
                                "Login",
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
                              text: "Don't have an account?",
                              style: TextStyle(
                                color: Constants.hint,
                                fontSize: Constants.normalText,
                              )),
                          TextSpan(
                              text: "\tRegister",
                              style: TextStyle(
                                color: Constants.primary,
                                fontSize: Constants.normalText,
                              )),
                        ])),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
