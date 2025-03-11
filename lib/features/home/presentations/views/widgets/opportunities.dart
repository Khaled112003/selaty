import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/title_catogrey.dart';
import 'package:selaty/features/home/presentations/views/widgets/oppornities_item.dart';

class Opportunities extends StatelessWidget {
  const Opportunities({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        TitleCatogrey(title: "انتهز الفرصه"),
        verticalSpace(10),
        OpportunitiesItemListView()
       
      ],
    );
  }
}

class OpportunitiesItemListView extends StatelessWidget {
  const OpportunitiesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenHelper.isLandscape(context) ? 110.h : 170.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: OpportunitiesItem(),
        ),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
