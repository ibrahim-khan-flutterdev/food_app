import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/widgets/constbutton.dart';
import 'package:food_app/widgets/main_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../resource/resource.dart';
import '../../auth/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    List<Widget> _Picture = [
      Container(
          height: 325.h,
          width: 359.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
          child: Image.asset(
            R.images.elliPes1,
            fit: BoxFit.cover,
          )),
      Container(
          height: 325.h,
          width: 359.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
          child: Image.asset(
            R.images.elliPes2,
            fit: BoxFit.cover,
          )),
      Container(
          height: 325.h,
          width: 359.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
          child: Image.asset(
            R.images.elliPes3,
            fit: BoxFit.cover,
          )),
    ];
    List<Widget> _text = [
      Container(
        height: 70.h,
        width: 210.w,
        child: Text(
          'Choose your favorite dishes frome the nearest restorant  or cafe',
          style: TextStyle(fontSize: 17.sp, color: R.colors.secondary),
        ),
      ),
      Container(
        height: 70.h,
        width: 198.w,
        child: Text(
          'Test fresh delicious meals anytime and anywhere',
          style: TextStyle(fontSize: 17.sp, color: R.colors.secondary),
        ),
      ),
      Container(
        height: 70.h,
        width: 190.w,
        child: Text(
          'We also deliver food and drinks from the nearest supermarket',
          style: TextStyle(fontSize: 17.sp, color: R.colors.secondary),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: R.colors.backGroundColor,
      body: Stack(children: [
        PageView.builder(
            controller: controller,
            itemCount: _Picture.length,
            onPageChanged: (i) {
              print("current index=$i");
              pageIndex = i;
              setState(() {});
            },
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  _Picture[index],
                  SizedBox(
                    height: 60.h,
                  ),
                  Center(child: _text[index]),
                ],
              );
            }),
        Positioned(
          left: 0,
          right: 0,
          bottom: 230,
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: ExpandingDotsEffect(
                  spacing: 11.0,
                  radius: 4.0,
                  dotWidth: 10.0,
                  dotHeight: 10,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: R.colors.secondary,
                  activeDotColor: R.colors.primary),
            ),
          ),
        ),
        Positioned(
            bottom: 120,
            left: 45,
            child: AppButton(
              title: Text(
                "NEXT",
                style: TextStyle(color: R.colors.secondary),
              ),
              onPressed: () {
                if (controller.page == 0) {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                }

                if (controller.page == 1) {
                  controller.animateToPage(2,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                }
                if (pageIndex == 2) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                }
              },
              color: R.colors.primary,
              height: 35.h,
              width: 270,
            )),
        Positioned(
            bottom: 60,
            left: 147,
            child: ConstButton(
                onPressed: () {},
                title: Text(
                  'SKIP',
                  style: TextStyle(color: R.colors.secondary),
                )))
      ]),
    );
  }
}
