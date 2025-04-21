import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/delivery/presentation/cubit/active_circle_cubit.dart';

class DeliveryItem extends StatelessWidget {
  final int id;

  const DeliveryItem({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        height: isLandscape ? 80.h : 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0.sp),
          child: Column(
            children: [
              Row(
                children: [
                  BlocBuilder<ActiveCircleCubit, Map<int, bool>>(
                    builder: (context, state) {
                      final isActivated = state[id] ?? false;
                      return IconButton(
                        onPressed: () {
                          context.read<ActiveCircleCubit>().toggleState(id);
                        },
                        icon: isActivated
                            ? const Icon(Icons.circle, color: Colors.red)
                            : const Icon(Icons.circle_outlined),
                      );
                    },
                  ),
                  Text(
                    "المنزل",
                    style: AppStyles.font16W600,
                  ),
                  const Spacer(),
                  Text(
                    "...",
                    style: AppStyles.font26W900,
                  ),
                ],
              ),
              Text(
                "shibeen elkom menofaia egypt",
                style: AppStyles.font14W400Grey.copyWith(color: Colors.grey),
              ),
              verticalSpace(isLandscape ? 9.h : 30.h),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  "جوال: 0123456789",
                  style: AppStyles.font16W600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
