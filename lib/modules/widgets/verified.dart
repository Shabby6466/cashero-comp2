import 'package:cashero_ui_later_merge2/core/go_router/routes_navigation.dart';
import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Verified extends StatelessWidget {
  String image;
  String title;
  String heading;
  String subheading;
  bool singleButton = true;
  final String route;

  Verified(
      {super.key,
      required this.image,
      required this.title,
      required this.heading,
      required this.subheading,
      required this.singleButton,
      required this.route});

  @override
  Widget build(BuildContext context) {
    Navigation navigation = NavigationImpl();
    return Scaffold(
      backgroundColor: Palette().white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 56.h,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  child: GestureDetector(
                    onTap: () {
                      navigation.popFromRoute();
                    },
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          image,
                        )),
                  ),
                ),
              ),
              SizedBox(height: 12.h,),
              SizedBox(
                height: 54.h,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20.sp,
                      height: 23.44.sp / 20.sp,
                      color: Palette().snackbarColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 54.h,),
              Center(
                child: SvgPicture.asset(
                  "assets/kyc/verified.svg",
                  height: 84.h,
                  width: 84.w,
                ),
              ),
              SizedBox(
                height: 47.h,
              ),
              Center(
                child: Text(
                  heading,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 20.sp,
                      color: Palette().snackbarColor,
                      height: 23.44.sp / 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: SizedBox(
                  height: 100.h,
                  width: 276.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    subheading,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.sp,
                        height: 20.sp / 14.sp,
                        color: Palette().greyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 24.h),
                child: singleButton
                    ? GestureDetector(
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
                              "Continue",
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
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48.h,
                            width: 164.w,
                            decoration: BoxDecoration(
                              color: Palette().white,
                              border: Border.all(
                                  color: Palette()
                                      .cardShadowColor
                                      .withOpacity(0.1)),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                "Try Again",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: Palette().cardShadowColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 18.75.sp / 16.sp),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              navigation.push(path: route);
                            },
                            child: Container(
                              height: 48.h,
                              width: 164.w,
                              decoration: BoxDecoration(
                                color: Palette().cardShadowColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Ok",
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
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
