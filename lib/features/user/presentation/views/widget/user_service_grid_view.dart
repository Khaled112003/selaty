import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/features/user/presentation/views/widget/user_service_item.dart';

class UserServiceItemGridView extends StatelessWidget {
  const UserServiceItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {'icon': Icons.home, 'title': 'الرئيسية'},
      {'icon': Icons.person, 'title': 'الملف الشخصي'},
      {'icon': Icons.shopping_cart, 'title': 'المتجر'},
      {'icon': Icons.settings, 'title': 'الإعدادات'},
      {'icon': Icons.notifications, 'title': 'الإشعارات'},
      {'icon': Icons.message, 'title': 'الرسائل'},
      {'icon': Icons.support, 'title': 'الدعم الفني'},
      {'icon': Icons.info, 'title': 'عن التطبيق'},
      {'icon': Icons.exit_to_app, 'title': 'تسجيل الخروج'},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: services.length, 
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: ScreenHelper.isLandscape(context) ? 5 : 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return UserServiceItem(
          icon: services[index]['icon'],
          title: services[index]['title'],
        );
      },
    );
  }
}
