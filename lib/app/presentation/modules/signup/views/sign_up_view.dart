import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../global/widgets/app_bar.dart';
import 'widgets/sign_up_form_w.dart';
import 'widgets/sign_up_title_w.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Scaffold(
      appBar: globalAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SignUpTitleW(
              responsive: responsive,
            ),
            SignUpFormW(
              responsive: responsive,
            ),
          ],
        ),
      ),
    );
  }
}
