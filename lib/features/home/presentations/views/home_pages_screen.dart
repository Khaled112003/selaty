import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/features/home/presentations/views/home_screen.dart';

class HomePagesScreen extends StatefulWidget {
  const HomePagesScreen({super.key});

  @override
  State<HomePagesScreen> createState() => _HomePagesScreenState();
}

class _HomePagesScreenState extends State<HomePagesScreen> {
  int currentIndex = 0;

  void onChangeTab(int index) {
    if (index == 2) return;
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isLandscape = screenSize.width > screenSize.height;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.green,
            iconSize: isLandscape ? 19.sp : 28.sp,
            currentIndex: currentIndex,
            onTap: onChangeTab,
            items: [
              BottomNavigationBarItem(
                icon: Icon(getIcon(0, currentIndex)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(getIcon(1, currentIndex)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(getIcon(3, currentIndex)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(getIcon(4, currentIndex)),
                label: '',
              ),
            ],
          ),
          Positioned(
  bottom: isLandscape ? 5.h : 15.h, 
  child: IgnorePointer( 
    child: Container(
      width: isLandscape ? 170.w : 70.w, 
      height: isLandscape ? 170.h : 70.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(isLandscape ? 5.w : 8.w),
        child: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.contain,
        ),
      ),
    ),
  ),
),

        ],
      ),
    );
  }
}

IconData getIcon(int index, int currentIndex) {
  switch (index) {
    case 0:
      return currentIndex == index
          ? CupertinoIcons.person_solid
          : CupertinoIcons.person;
    case 1:
      return currentIndex == index
          ? CupertinoIcons.heart_fill
          : CupertinoIcons.heart;
    case 3:
      return currentIndex == index
          ? Icons.notifications
          : Icons.notifications_none;
    case 4:
      return currentIndex == index
          ? Icons.search
          : Icons.search_sharp;
    default:
      return CupertinoIcons.question;
  }
}
