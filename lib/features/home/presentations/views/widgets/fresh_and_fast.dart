import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/home/presentations/views/widgets/best_seller_item.dart';

class FreshAndFast extends StatelessWidget {
  const FreshAndFast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Text(
            "طازج وسريع",
            style: AppStyles.font18W800,
          ),
        ),
        FreshAndFastGridView()
      ],
    );
  }
}
class FreshAndFastGridView extends StatelessWidget {
  const FreshAndFastGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    
  
    return SizedBox(
      height:isLandscape? 270.h:  460.h, 
      child: GridView.builder(
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: BestSellerItem(img: "assets/images/Strawberry.jpg"),
            ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent:isLandscape? 145.h:  170.h,
          mainAxisSpacing: 2,
          crossAxisSpacing: 10,
         
        ),
        itemCount: 8,
      ),
    );
  }
}
