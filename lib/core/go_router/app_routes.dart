import 'package:cashero_ui_later_merge2/core/go_router/routes_constant.dart';
import 'package:cashero_ui_later_merge2/modules/screens/freelancer/business_profile.dart';
import 'package:cashero_ui_later_merge2/modules/screens/freelancer/business_registration.dart';
import 'package:cashero_ui_later_merge2/modules/screens/freelancer/email_screen.dart';
import 'package:cashero_ui_later_merge2/modules/screens/freelancer/email_verification.dart';
import 'package:cashero_ui_later_merge2/modules/screens/freelancer/email_verification_success.dart';
import 'package:cashero_ui_later_merge2/modules/screens/freelancer/identity_verified.dart';
import 'package:cashero_ui_later_merge2/modules/screens/freelancer/self_employeed_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: Routes.businessReg,
      routes: [
        GoRoute(
          path: Routes.businessReg,
          name: Routes.businessReg,
          builder: (context, state) => const BusinessRegistration(),
        ),
        GoRoute(
          path: Routes.identityVerified,
          name: Routes.identityVerified,
          builder: (context, state) => const IdentityVerified(),
        ),
        GoRoute(
          path: Routes.selfEmployedDetails,
          name: Routes.selfEmployedDetails,
          builder: (context, state) => const SelfEmployeedDetails(),
        ),
        GoRoute(
          path: Routes.email,
          name: Routes.email,
          builder: (context, state) => const EmailScreen(),
        ),
        GoRoute(
          path: Routes.emailVerification,
          name: Routes.emailVerification,
          builder: (context, state) => const EmailVerification(),
        ),
        GoRoute(
          path: Routes.emailVerificationSuccess,
          name: Routes.emailVerificationSuccess,
          builder: (context, state) => const EmailVerificationSuccess(),
        ),
        GoRoute(
          path: Routes.businessProfile,
          name: Routes.businessProfile,
          builder: (context, state) => const BusinessProfile(),
        ),
      ]);
}
