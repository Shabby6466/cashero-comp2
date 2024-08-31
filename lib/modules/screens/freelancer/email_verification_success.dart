import 'package:cashero_ui_later_merge2/core/go_router/routes_constant.dart';
import 'package:cashero_ui_later_merge2/modules/widgets/verified.dart';
import 'package:flutter/material.dart';

class EmailVerificationSuccess extends StatelessWidget {
  const EmailVerificationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Verified(
          image: "assets/kyc/back_arrow.svg",
          title: "Email Verification",
          heading: "Success!",
          subheading: "Your email address has been verified",
          singleButton: true,
          route: Routes.businessProfile),
    );
  }
}
