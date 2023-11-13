import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/base/view/bottamnavigation/home/restaurant/foods_screen/productscreen/shopping_card/card_screen.dart';
import 'package:food_app/const/const.dart';
import 'package:food_app/widgets/main_button.dart';

import '../../../../../../../resource/resource.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backGroundColor,
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Container(
                height: 260.h,
                width: 360.w,
                decoration: BoxDecoration(
                  color: R.colors.itemBackGroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Const(
                  title: Text(
                    'Burger with chicken patty , cheese slice and ',
                    style: TextStyle(color: R.colors.secondary),
                  ),
                ),
              ),
              Const(
                title: Text(
                  ' vegetables',
                  style: TextStyle(color: R.colors.secondary),
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              Row(
                children: [
                  AppButton(
                      title: Text(
                        '-',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: R.colors.blackColor),
                      ),
                      color: R.colors.secondary,
                      height: 20.h,
                      width: 40.w,
                      onPressed: () {}),
                  Const(
                      title: Text(
                    '1',
                    style: TextStyle(
                        color: R.colors.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  AppButton(
                      title: Text(
                        '+',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: R.colors.blackColor),
                      ),
                      color: R.colors.secondary,
                      height: 20.h,
                      width: 40.w,
                      onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Const(
                        title: Text(
                      'LKR 599.00',
                      style: TextStyle(
                          color: R.colors.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              AppButton(
                title: Text(
                  'Add To Cart',
                  style: TextStyle(color: R.colors.secondary),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CardScreen()));
                },
                height: 45.h,
              )
            ],
          ),
          Positioned(
            top: 35,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: R.colors.blackColor,
                      size: 25.sp,
                    )),
                SizedBox(
                  width: 70.w,
                ),
                Const(
                    title: Text(
                  'Chicken Burger',
                  style: TextStyle(
                      color: R.colors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ))
              ],
            ),
          ),
          Positioned(
            left: 80,
            top: 110,
            child: Container(
              height: 210.h,
              width: 230.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                R.images.chicKenBurger,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
