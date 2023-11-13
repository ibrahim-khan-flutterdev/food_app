import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/const/const.dart';
import 'package:food_app/widgets/main_button.dart';

import '../../../../../../../../resource/resource.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: R.colors.primary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: R.colors.secondary,
                          size: 35.sp,
                        )),
                    SizedBox(
                      width: 70.w,
                    ),
                    Const(
                        title: Text(
                      'Shopping Cart',
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: R.colors.secondary,
                          fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 90.h,
              width: 345.w,
              decoration: BoxDecoration(
                  color: R.colors.itemBackGroundColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.w,
                      ),
                      Const(
                          title: Text(
                        '1x',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: R.colors.textIconColor),
                      )),
                      SizedBox(
                        width: 20.w,
                      ),
                      Const(
                          title: Text(
                        'Chicken Burger',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: R.colors.textIconColor),
                      )),
                      SizedBox(
                        width: 50.w,
                      ),
                      Const(
                          title: Text(
                        'LKR 599.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: R.colors.textIconColor),
                      )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: R.colors.secondary),
                        child: Icon(
                          Icons.close,
                          size: 17.sp,
                          color: R.colors.iconColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Const(
                        title: Text(
                      'The Curry Leaf',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: R.colors.dimGray),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 90.h,
              width: 345.w,
              decoration: BoxDecoration(
                  color: R.colors.itemBackGroundColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.w,
                      ),
                      Const(
                          title: Text(
                        '1x',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: R.colors.textIconColor),
                      )),
                      SizedBox(
                        width: 20.w,
                      ),
                      Const(
                          title: Text(
                        'Italian Pasta',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: R.colors.textIconColor),
                      )),
                      SizedBox(
                        width: 70.w,
                      ),
                      Const(
                          title: Text(
                        'LKR 799.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: R.colors.textIconColor),
                      )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: R.colors.secondary),
                        child: Icon(
                          Icons.close,
                          size: 17.sp,
                          color: R.colors.iconColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Const(
                        title: Text(
                      'Graze Kichen',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: R.colors.dimGray),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Const(
                    title: Text(
                  'Delivery',
                  style: TextStyle(color: R.colors.secondary),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 260),
                  child: Const(
                      title: Text(
                    'Free',
                    style: TextStyle(color: R.colors.secondary),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Const(
                    title: Text(
                  'Total',
                  style: TextStyle(color: R.colors.secondary),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Const(
                      title: Text(
                    'LKR 1398.00',
                    style: TextStyle(color: R.colors.secondary),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            AppButton(
                height: 47.h,
                title: Text(
                  'Make order',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: R.colors.secondary),
                ),
                onPressed: () {}),
            SizedBox(
              height: 5.h,
            ),
            AppButton(
                color: R.colors.secondary,
                height: 47.h,
                title: Text(
                  'Continue Shopping',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: R.colors.primary),
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
