import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/base/view/bottamnavigation/account/account.dart';
import 'package:food_app/base/view/bottamnavigation/heart/heart.dart';
import 'package:food_app/base/view/bottamnavigation/home/home.dart';
import 'package:food_app/base/view/bottamnavigation/message/message.dart';

import '../../../resource/resource.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible =
        KeyboardVisibilityProvider.isKeyboardVisible(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: R.colors.backGroundColor,
        floatingActionButton: isKeyboardVisible
            ? null
            : FloatingActionButton(
                backgroundColor: R.colors.secondary,
                onPressed: () {},
                child: SizedBox(
                    height: 25,
                    child: Image.asset(
                      R.images.shop,
                    )),
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: R.colors.backGroundColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: () {
                      pageController.jumpToPage(0);
                      setState(() {
                        index = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home_outlined,
                      size: 35,
                      color:
                          index == 0 ? Color(0xFF04D70FF) : Color(0xFF6D6D6D),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: IconButton(
                      onPressed: () {
                        pageController.jumpToPage(1);
                        setState(() {
                          index = 1;
                        });
                      },
                      icon: SizedBox(
                          height: 25,
                          child: Image.asset(
                            R.images.heart,
                            color: index == 1
                                ? Color(0xFF4D70FF)
                                : Color(0xFF6D6D6D),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: IconButton(
                    onPressed: () {
                      pageController.jumpToPage(2);
                      setState(() {
                        index = 2;
                      });
                    },
                    icon: Image.asset(
                      R.images.message,
                      color:
                          index == 2 ? Color(0xFF04D70FF) : Color(0xFF6D6D6D),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: IconButton(
                      onPressed: () {
                        pageController.jumpToPage(3);
                        setState(() {
                          index = 3;
                        });
                      },
                      icon: SizedBox(
                          height: 25.h,
                          child: Image.asset(
                            R.images.account,
                            color: index == 3
                                ? Color(0xFF04D70FF)
                                : Color(0xFF6D6D6D),
                          ))),
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (int) {
            print('change Page$int');
          },
          children: [
            HomeScreen(),
            HeartScreen(),
            MessageScreen(),
            AccountScreen(),
          ],
        ),
      ),
    );
  }
}
