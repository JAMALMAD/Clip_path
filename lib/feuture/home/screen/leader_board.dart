

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leader_board/core/const/color/color.dart';
import 'package:leader_board/core/const/icons/icons_data.dart';
import 'package:leader_board/core/const/images/image.dart';
import 'package:leader_board/core/utils/text_style.dart';

import '../widgets/custom_card.dart';
import '../widgets/custom_clipPath.dart';


class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          IconsData.arrowleft,
          color: AppColor.white,
        ),
        backgroundColor: AppColor.yellowColor,
        actions: [
          Image.asset(
            IconsData.more,
            width: 30.w ,
            height: 30.h,
            color: AppColor.white,
          ),
        ],
        title: Text("Leader Board",style: StringStyle.h1(),),
        centerTitle: true,
      ),
      body: Column(children: [
      const CustomClipDesign(),
      Image.asset(ImagePath.five,height: 4,width: 300,),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const  Padding(
                  padding:  EdgeInsets.all(10.0),
                 child: CustomCard(title: "Devon Lane", imagePath: ImagePath.furth, iconPath: IconsData.polygon),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
