import 'package:cashero_ui_later_merge2/core/go_router/routes_constant.dart';
import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:cashero_ui_later_merge2/modules/widgets/verified.dart';
import 'package:flutter/material.dart';

class IdentityVerified extends StatelessWidget {
  const IdentityVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().white,
      body: Verified(
          image: "assets/kyc/back_arrow.svg",
          title: "Business registration",
          heading: "Identity verification",
          subheading:
              "To help secure your account and comply with the law, we need to confirm that you are who you say you are",
          singleButton: true,
          route: Routes.selfEmployedDetails,
      ),
    );
  }
}
