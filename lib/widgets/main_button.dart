import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  Text title;
  Function onPressed;
  Color? color;
  double? height;
  double? width;
  Image? image;
  AppButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color = Colors.blue,
    this.height,
    this.width,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: color,
          ),
          child: Image != null
              ? Stack(
                  children: [
                    Center(child: title),
                    Positioned(
                        top: 15,
                        right: 35,
                        child: Container(
                          height: 20.h,
                          child: ClipRRect(child: image),
                        ))
                  ],
                )
              : Center(child: title)),
    );
  }
}
