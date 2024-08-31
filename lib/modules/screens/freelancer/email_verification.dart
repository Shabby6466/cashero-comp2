import 'package:cashero_ui_later_merge2/core/go_router/routes_constant.dart';
import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:cashero_ui_later_merge2/modules/widgets/verified.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().white,
      body: Verified(
        image: "assets/kyc/email_verification.svg",
        title: "Email Verification",
        heading: "Check your inbox",
        subheading:
        "We've sent an email to example...@cashero.com. To confirm your email address, tap the button on the email we just sent you. If you don't receive our email within minutes, please check your spam or junk folder.",
        singleButton: false,
        route: Routes.emailVerificationSuccess,
      ),
    );
  }
}
