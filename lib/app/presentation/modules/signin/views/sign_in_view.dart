import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';

import 'widgets/sign_in_pages_w.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Scaffold(
      body: SignInPagesW(
        responsive: responsive,
      ),
    );
  }
}
