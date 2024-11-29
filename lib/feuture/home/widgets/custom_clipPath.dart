import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leader_board/core/const/color/color.dart';
import 'package:leader_board/core/const/images/image.dart';

class CustomClipDesign extends StatelessWidget {
  const CustomClipDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipPath(
        clipper: TopTrapezoidClipper(),
        child: Container(
          width:500.w,
          height: 350.h,
          decoration: BoxDecoration(
            color: AppColor.yellowColor,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 5,
                child: Image.asset(
                  ImagePath.first,
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("David", style: TextStyle(color: AppColor.white, fontSize: 24)),
                    Text("4578", style: TextStyle(color: AppColor.white, fontSize: 20)),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                bottom: 10,
                left: 30,
                child: Column(
                  children: [
                    Image.asset(
                      ImagePath.second,
                      width: 101.91,
                      height: 99.84,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("John", style: TextStyle(color: AppColor.white, fontSize: 24)),
                        SizedBox(height: 5),
                        Text("4235", style: TextStyle(color: AppColor.white, fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                bottom: 10,
                right: 30,
                child: Column(
                  children: [
                    Image.asset(
                      ImagePath.third,
                      width: 101.91,
                      height: 99.84,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Merry", style: TextStyle(color: AppColor.white, fontSize: 24)),
                        SizedBox(height: 5),
                        Text("3967", style: TextStyle(color: AppColor.white, fontSize: 20)),
                      ],
                    ),
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

class TopTrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(0, size.height * 0.7);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

