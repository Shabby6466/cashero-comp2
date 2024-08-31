import 'package:cashero_ui_later_merge2/core/go_router/routes_constant.dart';
import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:cashero_ui_later_merge2/modules/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';

class BusinessRegistration extends StatefulWidget {
  const BusinessRegistration({super.key});

  @override
  State<BusinessRegistration> createState() => _BusinessRegistrationState();
}

class _BusinessRegistrationState extends State<BusinessRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette().white,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              CustomBottomSheet(
                      title: "KYC required",
                      subtitle:  "Once initiated, app features will be unavailable until KYC verification is complete.",
                     buttonText:  "Proceed",
                      route: Routes.identityVerified
              )
                  .myShowModalBottomSheet(context);
            },
            child: const Text("Open Bottom Sheet")),
      ),
    );
  }
}
