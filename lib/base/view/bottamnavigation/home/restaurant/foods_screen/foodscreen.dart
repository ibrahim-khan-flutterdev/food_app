import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/base/view/bottamnavigation/home/restaurant/foods_screen/productscreen/prroductscreen.dart';
import 'package:food_app/const/const.dart';

import '../../../../../../resource/resource.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120.h,
              width: 360.w,
              decoration: BoxDecoration(
                  color: R.colors.primary,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: R.colors.secondary,
                            size: 30.sp,
                          )),
                      SizedBox(
                        width: 85.w,
                      ),
                      Const(
                          title: Text(
                        'The Curry Leaf',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: R.colors.secondary),
                      )),
                      SizedBox(
                        width: 55.w,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: R.colors.secondary,
                            size: 30.sp,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 93,
                      ),
                      Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                            color: R.colors.secondary, shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Const(
                          title: Text(
                        'Sri Lanka cuisine',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                            color: R.colors.secondary),
                      )),
                      SizedBox(
                        width: 35.w,
                      ),
                      Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                            color: R.colors.secondary, shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Const(
                          title: Text(
                        '350 - 2500LKR',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                            color: R.colors.secondary),
                      )),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductScreen()));
              },
              child: Stack(children: [
                Container(
                  height: 120.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    R.images.mainDishes,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 120,
                  child: Text(
                    'Main Dishes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: R.colors.secondary),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 10.h,
            ),
            Stack(children: [
              Container(
                height: 120.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  R.images.fastFoods,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 120,
                child: Text(
                  'Fast Foods',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: R.colors.secondary),
                ),
              )
            ]),
            SizedBox(
              height: 10.h,
            ),
            Stack(children: [
              Container(
                height: 120.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  R.images.salads,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 150,
                child: Text(
                  'Salads',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: R.colors.secondary),
                ),
              )
            ]),
            SizedBox(
              height: 10.h,
            ),
            Stack(children: [
              Container(
                height: 120.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  R.images.coolDrinks,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 120,
                child: Text(
                  '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: R.colors.secondary),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
