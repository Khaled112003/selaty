import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/features/home/presentations/views/widgets/classification_item.dart';

class ClassificationItemListView extends StatelessWidget {
  const ClassificationItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal, 
      itemCount: 7, 
      itemBuilder: (context, index) => Padding(
        padding:  EdgeInsets.only(left: 7.w ),
        child: ClassificationItem(),
      ),
    );
  }
}