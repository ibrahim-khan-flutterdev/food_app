import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/const/const.dart';
import 'package:food_app/widgets/constbutton.dart';

import '../../../../resource/resource.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController orderController = TextEditingController();
  TextEditingController paymentController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController faqController = TextEditingController();
  TextEditingController exitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backGroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 170.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Image.asset(R.images.backGround_picture),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110, top: 60),
                  child: Const(
                      title: Text(
                    'Jeniffer Winget',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: R.colors.secondary),
                  )),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 40.h,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: TextFormField(
                      controller: orderController,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            color: R.colors.textIconColor,
                          ),
                          filled: true,
                          fillColor: R.colors.itemBackGroundColor,
                          hintText: 'My orders',
                          hintStyle: TextStyle(color: R.colors.textIconColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      controller: paymentController,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            color: R.colors.textIconColor,
                          ),
                          filled: true,
                          fillColor: R.colors.itemBackGroundColor,
                          hintText: 'My payment cards',
                          hintStyle: TextStyle(color: R.colors.textIconColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            color: R.colors.textIconColor,
                          ),
                          filled: true,
                          fillColor: R.colors.itemBackGroundColor,
                          hintText: 'My addresses',
                          hintStyle: TextStyle(color: R.colors.textIconColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      controller: codeController,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            color: R.colors.textIconColor,
                          ),
                          filled: true,
                          fillColor: R.colors.itemBackGroundColor,
                          hintText: 'Promocodes',
                          hintStyle: TextStyle(color: R.colors.textIconColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      controller: faqController,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            color: R.colors.textIconColor,
                          ),
                          filled: true,
                          fillColor: R.colors.itemBackGroundColor,
                          hintText: 'FAQ',
                          hintStyle: TextStyle(color: R.colors.textIconColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, top: 10, right: 10, bottom: 10),
                    child: TextFormField(
                      controller: exitController,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            color: R.colors.textIconColor,
                          ),
                          filled: true,
                          fillColor: R.colors.itemBackGroundColor,
                          hintText: 'Exit',
                          hintStyle: TextStyle(color: R.colors.textIconColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                ConstButton(
                    onPressed: () {},
                    title: Text(
                      'Logout',
                      style: TextStyle(color: R.colors.secondary),
                    )),
              ],
            ),
            Positioned(
              left: 135,
              top: 110,
              child: Container(
                height: 108.h,
                width: 120.w,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  R.images.picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: R.colors.secondary,
                        size: 30.sp,
                      )),
                  SizedBox(
                    width: 100.w,
                  ),
                  Const(
                      title: Text(
                    'My Profile',
                    style: TextStyle(
                        color: R.colors.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                  )),
                  SizedBox(
                    width: 60.w,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: R.colors.secondary,
                        size: 30.sp,
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
