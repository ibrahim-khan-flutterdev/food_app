import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/base/view/bottamnavigation/home/restaurant/restaurants.dart';
import 'package:food_app/const/const.dart';

import '../../../../resource/resource.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.menu,
                      size: 50.sp,
                      color: R.colors.secondary,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 5,
                      ),
                      child: SizedBox(
                        height: 35.h,
                        child: TextFormField(
                          controller: searchController,
                          decoration: InputDecoration(
                            suffixIcon: Container(
                              height: 2.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: R.colors.primary,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Icon(
                                Icons.search,
                                color: R.colors.secondary,
                              ),
                            ),
                            contentPadding: EdgeInsets.only(left: 8),
                            isDense: true,
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
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RestaurantsScreen(),
                            ));
                      },
                      child: Container(
                        height: 60.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            color: R.colors.secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image(
                                  image: AssetImage(R.images.restaurant),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Const(
                                title: Text(
                              'Restaurants',
                              style: TextStyle(color: R.colors.primary),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            color: R.colors.secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image(
                                  image: AssetImage(R.images.coFee),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Const(
                                title: Text(
                              'Coffee Shops',
                              style: TextStyle(color: R.colors.primary),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            color: R.colors.secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image(
                                  image: AssetImage(R.images.juice),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Const(
                                title: Text(
                              'Coffee Shops',
                              style: TextStyle(color: R.colors.primary),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 13.w,
                  ),
                  Const(
                    title: Text(
                      'Popular Food',
                      style: TextStyle(
                          color: R.colors.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 19.sp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Container(
                      height: 33.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: R.colors.primary, width: 2)),
                      child: Center(
                          child: Text(
                        'View All',
                        style: TextStyle(color: R.colors.primary),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(children: [
                      Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          R.images.friedChicken,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: Container(
                          height: 33.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary.withOpacity(0.9),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(18),
                              )),
                          child: Column(
                            children: [
                              Const(
                                title: Text(
                                  'Fried chicken devil',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                      color: R.colors.blackColor),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Const(
                                      title: Text(
                                    'LKR 599.00',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: R.colors.blackColor),
                                  )),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: R.colors.primary,
                                  ),
                                  Const(
                                      title: Text(
                                    '4.8',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: R.colors.blackColor),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(children: [
                      Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          R.images.steakFriTes,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: Container(
                          height: 33.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary.withOpacity(0.9),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(18),
                              )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Const(
                                  title: Text(
                                    'Steak frits',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: R.colors.blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Const(
                                      title: Text(
                                    'LKR 1,999.00',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: R.colors.blackColor),
                                  )),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: R.colors.primary,
                                  ),
                                  Const(
                                      title: Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: R.colors.blackColor),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(children: [
                      Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            R.images.chicKenPasta,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: Container(
                          height: 33.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary.withOpacity(0.9),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(18),
                              )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Const(
                                  title: Text(
                                    'chicken pasta',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: R.colors.blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Const(
                                      title: Text(
                                    'LKR 999.00',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: R.colors.blackColor),
                                  )),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: R.colors.primary,
                                  ),
                                  Const(
                                      title: Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: R.colors.blackColor),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 13.w,
                  ),
                  Const(
                    title: Text(
                      'Fast Food Offers',
                      style: TextStyle(
                          color: R.colors.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 19.sp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Container(
                      height: 33.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: R.colors.primary, width: 2)),
                      child: Center(
                          child: Text(
                        'View All',
                        style: TextStyle(color: R.colors.primary),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(children: [
                      Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          R.images.beefBurGar,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: Container(
                          height: 33.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary.withOpacity(0.9),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(18),
                              )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Const(
                                  title: Text(
                                    'beef burger offer',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: R.colors.blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Const(
                                      title: Text(
                                    'LKR 599.00',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: R.colors.blackColor),
                                  )),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: R.colors.primary,
                                  ),
                                  Const(
                                      title: Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: R.colors.blackColor),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(children: [
                      Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          R.images.italianPadsTa,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: Container(
                          height: 33.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary.withOpacity(0.9),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(18),
                              )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Const(
                                  title: Text(
                                    'italian pasta offer',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: R.colors.blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Const(
                                      title: Text(
                                    'LKR 799.00',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: R.colors.blackColor),
                                  )),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: R.colors.primary,
                                  ),
                                  Const(
                                      title: Text(
                                    '4.6',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: R.colors.blackColor),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(children: [
                      Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            R.images.crispyChicKe,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: Container(
                          height: 33.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: R.colors.secondary.withOpacity(0.9),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(18),
                              )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Const(
                                  title: Text(
                                    'crispy chicken offer',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: R.colors.blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Const(
                                      title: Text(
                                    'LKR 399.00',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: R.colors.blackColor),
                                  )),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: R.colors.primary,
                                  ),
                                  Const(
                                      title: Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: R.colors.blackColor),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
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
