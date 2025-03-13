import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/home/presentations/views/widgets/classification_item.dart';


class ClassificationItemGridView extends StatelessWidget {
  const ClassificationItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
      final isLandscape = ScreenHelper.isLandscape(context);
    final childAspectRatio = isLandscape ? 1.3: 01.0;
    
    
    final crossAxisCount = isLandscape ? 3 : 2;
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ClassificationItem(titleStyle: AppStyles.font14W600,),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: 9,
    );
  }
}
 