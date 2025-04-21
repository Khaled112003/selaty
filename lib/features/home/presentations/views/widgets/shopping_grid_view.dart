import 'package:flutter/material.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/home/data/models/shopping_model.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/features/home/presentations/views/widgets/shopping_offers_item.dart';

class ShopByOffersGridView extends StatelessWidget {
  ShopByOffersGridView({
    super.key,
  });

  final List<ShoppingModel> shoppingList = [
    // الصف الأول (نسب الخصم)
    ShoppingModel(
      color: const Color(0xFFFF5252), // أحمر
      text1: "صفقة",
      text2: "50%",
      text3: "خصم",
    ),
    ShoppingModel(
      color: const Color(0xFF2196F3), // أزرق
      text1: "صفقة",
      text2: "40%",
      text3: "خصم",
    ),
    ShoppingModel(
      color: const Color(0xFFAB47BC), // بنفسجي
      text1: "صفقة",
      text2: "30%",
      text3: "خصم",
    ),

    // الصف الثاني (عروض متنوعة)
    ShoppingModel(
      color: const Color(0xFF009688), // أخضر مائل للأزرق
      text1: "",
      text2: "اختيارات\nالشهر",
      textStyle2: AppStyles.font25W700.copyWith(color: Colors.white),

      text3: "",
    ),
    ShoppingModel(
      color: const Color(0xFF8BC34A), // أخضر فاتح
      text1: "اقل",
      text2: "99 ريال",
      text3: "",
      textStyle2: AppStyles.font20W700.copyWith(color: Colors.white),
      textStyle: AppStyles.font16W600.copyWith(color: Colors.white),
    ),
    ShoppingModel(
      color: const Color(0xFFFF9800), // برتقالي
      text1: "اشتري 1",
      text2: "واحصل 1",
      text3: "مجانا",
      textStyle3: AppStyles.font30W700.copyWith(color: Colors.white),
      textStyle2: AppStyles.font14W900.copyWith(color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ShopByOffersItem(
        shoppingModel: shoppingList[index],
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isLandscape ? 3 : 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: isLandscape ? 1.8 : 1.0,
      ),
      itemCount: 6,
    );
  }
}
