import 'package:flutter/cupertino.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/features/home/presentations/views/widgets/best_seller_item.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    final childAspectRatio = isLandscape ? 1.05: 0.82;
    
    
    final crossAxisCount = isLandscape ? 3 : 2;
    return GridView.builder(
      padding: EdgeInsets.symmetric(),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => BestSellerItem(
        img: "assets/images/fruit_icon.png",
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: 4,
    );
  }
}
