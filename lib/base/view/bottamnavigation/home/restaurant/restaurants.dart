import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/base/view/bottamnavigation/home/restaurant/foods_screen/foodscreen.dart';
import 'package:food_app/const/const.dart';

import '../../../../../resource/resource.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backGroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: R.colors.secondary,
                        size: 30.sp,
                      )),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: TextFormField(
                        controller: searchController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                            left: 8,
                          ),
                          suffixIcon: Container(
                            height: 34.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                              color: R.colors.primary,
                            ),
                            child: Icon(
                              Icons.search,
                              size: 25.sp,
                              color: R.colors.secondary,
                            ),
                          ),
                          filled: true,
                          fillColor: R.colors.secondary,
                          hintText: 'What are you locking for ?',
                          hintStyle: TextStyle(color: R.colors.blackColor),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Const(
                title: Text(
                  'Restaurants',
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: R.colors.secondary),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FoodScreen()));
                },
                child: Stack(children: [
                  Center(
                    child: Container(
                      height: 150.h,
                      width: 340.w,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          R.images.curryLeaf,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    left: 115,
                    child: Const(
                        title: Text(
                      'The Curry Leaf',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: R.colors.secondary),
                    )),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 73,
                    child: Row(
                      children: [
                        Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary,
                              shape: BoxShape.circle),
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
                          width: 60.w,
                        ),
                        Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary,
                              shape: BoxShape.circle),
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
                        ))
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {},
                child: Stack(children: [
                  Center(
                    child: Container(
                      height: 150.h,
                      width: 340.w,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          R.images.grazeKitchen,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    left: 115,
                    child: Const(
                        title: Text(
                      'Graze Kitchen',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: R.colors.secondary),
                    )),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 73,
                    child: Row(
                      children: [
                        Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Const(
                            title: Text(
                          'Italian cuisine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: R.colors.secondary),
                        )),
                        SizedBox(
                          width: 70.w,
                        ),
                        Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Const(
                            title: Text(
                          '599 - 3499LKR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: R.colors.secondary),
                        ))
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {},
                child: Stack(children: [
                  Center(
                    child: Container(
                      height: 150.h,
                      width: 340.w,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          R.images.londonGrill,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 39,
                    left: 100,
                    child: Const(
                        title: Text(
                      'The London Grill',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: R.colors.secondary),
                    )),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 65,
                    child: Row(
                      children: [
                        Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Const(
                            title: Text(
                          'French cuisine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: R.colors.secondary),
                        )),
                        SizedBox(
                          width: 73.w,
                        ),
                        Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Const(
                            title: Text(
                          '349 - 2500LKR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: R.colors.secondary),
                        ))
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
