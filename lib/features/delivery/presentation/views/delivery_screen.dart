import 'package:flutter/material.dart';

import 'package:selaty/core/helpers/screen_helper.dart';

import 'widgets/delivery_landscape.dart';
import 'widgets/delivery_portrait.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = ScreenHelper.screenSize(context);
    final bool isLandscape = ScreenHelper.isLandscape(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: isLandscape
          ? DeliveryLandScape()
          : DeliveryPortrait(isLandscape: isLandscape, screenSize: screenSize),
    );
  }
}
