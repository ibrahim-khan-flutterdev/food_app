import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/base/view/bottamnavigation/bottamnavigation.dart';
import 'package:food_app/widgets/constbutton.dart';
import 'package:food_app/widgets/main_button.dart';

import '../../const/const.dart';
import '../../resource/resource.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Center(
                child: Const(
              title: Text(
                'Log in ',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: R.colors.secondary),
              ),
            )),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: R.colors.secondary,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: R.colors.primary),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: R.colors.secondary,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: R.colors.primary),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: ConstButton(
                  onPressed: () {},
                  title: Text(
                    'Forgot Password ?',
                    style: TextStyle(color: R.colors.secondary),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: AppButton(
                    title: Text(
                      'Log in ',
                      style: TextStyle(color: R.colors.secondary),
                    ),
                    height: 45.h,
                    width: 280.w,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    })),
            SizedBox(
              height: 83,
            ),
            Center(
                child: AppButton(
                    title: Text(
                      'Log in with Google ',
                      style: TextStyle(color: R.colors.blackColor),
                    ),
                    height: 45.h,
                    width: 330.w,
                    color: R.colors.secondary,
                    image: Image.asset(
                      R.images.google,
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {})),
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: AppButton(
                    title: Text(
                      'Log in with Facebook',
                      style: TextStyle(color: R.colors.blackColor),
                    ),
                    height: 45.h,
                    width: 330.w,
                    color: R.colors.secondary,
                    image: Image.asset(
                      R.images.faceBook,
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {})),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 5),
              child: Row(
                children: [
                  Const(
                      title: Text(
                    'Not a member ?',
                    style: TextStyle(color: R.colors.secondary),
                  )),
                  ConstButton(
                      onPressed: () {},
                      title: Text(
                        'Join Now',
                        style: TextStyle(color: R.colors.primary),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
