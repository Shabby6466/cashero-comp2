import 'package:cashero_ui_later_merge2/core/go_router/routes_constant.dart';
import 'package:cashero_ui_later_merge2/core/go_router/routes_navigation.dart';
import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:cashero_ui_later_merge2/modules/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Navigation navigation = NavigationImpl();
    TextEditingController emailController = TextEditingController();

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
                          "assets/kyc/back_arrow.svg",
                          height: 20.h,
                          width: 20.w,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20.sp,
                        height: 24.sp / 20.sp,
                        color: Palette().snackbarColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Skip",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 14.sp,
                          height: 16.41.sp / 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Palette().cardShadowColor,
                        ),
                  )
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "We'll only use it for important information",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    height: 20.sp / 14.sp,
                    color: Palette().textfieldHintColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 26.h,
              ),
              CustomTextField(
                textEditingController: emailController,
                hintText: "Enter email address",
                validator: null,
                labelText: "Email address",
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  navigation.push(path: Routes.emailVerification);
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
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Palette().white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          height: 18.75.sp / 16.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
