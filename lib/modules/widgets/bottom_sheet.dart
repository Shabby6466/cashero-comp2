import 'package:cashero_ui_later_merge2/core/go_router/routes_navigation.dart';
import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomSheet {
  String title;
  String subtitle;
  String buttonText;
  String route;

  CustomBottomSheet({
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.route,
  });

  void myShowModalBottomSheet(BuildContext context) {
    Navigation navigation = NavigationImpl();
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            height: 254.h,
            width: 375.w,
            decoration: BoxDecoration(
              color: Palette().white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 21.h,),
                Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: SvgPicture.asset("assets/kyc/kyc_cross.svg"))),
                SizedBox(height: 6.h),
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 20.sp,
                        height: 23.44 / 20.sp,
                        color: Palette().snackbarColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(height: 17.h,),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 16.sp,
                        height: 24.sp / 16.sp,
                        color: Palette().snackbarColor,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 24.h),
                  child: GestureDetector(
                    onTap: () {
                      navigation.push(path: route);
                    },
                    child: Container(
                      height: 48.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                        color: Palette().cardShadowColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          buttonText,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: Palette().white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 18.75.sp / 16.sp),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
