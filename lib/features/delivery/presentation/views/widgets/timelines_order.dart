import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/delivery/data/models/order_status.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/helpers/screen_helper.dart';






class OrderTimeline extends StatefulWidget {
  const OrderTimeline({super.key});

  @override
  State<OrderTimeline> createState() => _OrderTimelineState();
}

class _OrderTimelineState extends State<OrderTimeline> {
  late List<OrderStatus> _orderStatuses;

  @override
  void initState() {
    super.initState();
    _orderStatuses = [
      OrderStatus(
        title: "تم الطلب",
        subtitle: "JAN 25, 2023",
        isCompleted: false,
        icon: Icons.shopping_bag_outlined,
      ),
       OrderStatus(
        title: "order ",
        subtitle: "JAN 25, 2023",
        isCompleted: false,
        icon: Icons.local_shipping_outlined,
      ),
      OrderStatus(
        title: "تم شحن الطلب",
        subtitle: "JAN 26, 2022",
        isCompleted: false,
        icon: Icons.inventory_2_outlined,
      ),
      OrderStatus(
        title: "خارج الخدمة",
        subtitle: "",
        isCompleted: false,
        icon: Icons.local_shipping_outlined,
      ),
      OrderStatus(
        title: "أجل تسليم",
        subtitle: "",
        isCompleted: false,
        icon: Icons.home_outlined,
      ),
    ];
  }

  void _toggleStatus(int index) {
    setState(() {
     
      _orderStatuses[index].isCompleted = !_orderStatuses[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = ScreenHelper.screenSize(context);
    final islandScape = ScreenHelper.isLandscape(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
       width: islandScape ? size.width * 0.5 : double.infinity,
     
        padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 8.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: List.generate(
            _orderStatuses.length,
            (index) => InkWell(
              onTap: () => _toggleStatus(index),
              child: TimelineTile(
                alignment: TimelineAlign.manual,
                lineXY: 0.2,
                isFirst: index == 0,
                isLast: index == _orderStatuses.length - 1,
                indicatorStyle: IndicatorStyle(
                  width: 35.r,
                  height: 35.r,
                  indicator: Container(
                    decoration: BoxDecoration(
                      color: _orderStatuses[index].isCompleted 
                          ? Colors.green.shade100 
                          : Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      _orderStatuses[index].icon,
                      color: _orderStatuses[index].isCompleted 
                          ? Colors.green 
                          : Colors.grey,
                      size: 22.r,
                    ),
                  ),
                ),
                beforeLineStyle: LineStyle(
                  color: index > 0 && _orderStatuses[index-1].isCompleted 
                      ? Colors.green 
                      : Colors.grey.shade300,
                  thickness: 2,
                ),
                afterLineStyle: LineStyle(
                  color: index < _orderStatuses.length - 1 && _orderStatuses[index].isCompleted 
                      ? Colors.green 
                      : Colors.grey.shade300,
                  thickness: 2,
                ),
                endChild: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.r,
                    vertical: 12.r,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _orderStatuses[index].title,
                        style: AppStyles.font14W400.copyWith(
                          fontWeight: FontWeight.bold,
                          color: _orderStatuses[index].isCompleted 
                              ? Colors.black 
                              : Colors.grey,
                        ),
                      ),
                      if (_orderStatuses[index].subtitle.isNotEmpty)
                        Text(
                          _orderStatuses[index].subtitle,
                          style: AppStyles.font12W500.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}