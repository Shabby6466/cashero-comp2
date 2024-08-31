
import 'package:cashero_ui_later_merge2/core/go_router/routes_navigation.dart';
import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:cashero_ui_later_merge2/modules/widgets/bottom_sheet.dart';
import 'package:cashero_ui_later_merge2/modules/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BusinessProfile extends StatelessWidget {
  const BusinessProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController PhoneNumberController = TextEditingController();
    TextEditingController TaglineController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    Navigation navigation = NavigationImpl();
    return Scaffold(
      backgroundColor: Palette().white,
      body: SingleChildScrollView(
        child: Padding(
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
                Text(
                  "Business profile",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20.sp,
                      height: 24.sp / 20.sp,
                      color: Palette().snackbarColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Please enter your business details and create a username. This information will be publicly visible within the app.",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14.sp,
                      height: 20.sp / 14.sp,
                      color: Palette().textfieldHintColor,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 14.h),
                Container(
                  height: 72.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette().dividerColor ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/kyc/upload_Profile.svg"),
                      SizedBox(
                        width: 5.12.w,
                      ),
                      Text(
                        "Upload profile",
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 16.41 / 14.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 72.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette().dividerColor ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/kyc/upload_Profile.svg"),
                      SizedBox(
                        width: 5.12.w,
                      ),
                      Text(
                        "Upload profile",
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 16.41 / 14.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h,),
                CustomTextField(
                  textEditingController: usernameController,
                  hintText: "Create a username",
                  validator: null,
                  labelText: "Username",
                ),
                SizedBox(
                  height: 47.h,
                ),
                CustomTextField(
                  textEditingController: PhoneNumberController,
                  hintText: "Enter phone number (optional)",
                  validator: null,
                  labelText: "Mobile Number",
                ),
                SizedBox(
                  height: 28.h,
                ),
                CustomTextField(
                  textEditingController: TaglineController,
                  hintText: "Tagline (optional)",
                  validator: null,
                  labelText: "tagline",
                ),
                SizedBox(height: 28.h,),
                CustomTextField(textEditingController: descriptionController, hintText: "Description", validator: null,labelText: "Description",),
                SizedBox(height: 10.h,),
                GestureDetector(
                  onTap: () {
                    CustomBottomSheet(
                        title: "Biometric enabled",
                        subtitle:
                        "Biometric login is enabled. You can turn this feature off at any time from your profile screen.",
                        buttonText: "OK",
                        route: "")
                        .myShowModalBottomSheet(context);
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
                        "OK",
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
            ))),
      ),
    );
  }
}
