import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/widgets/signature/signature_image_gw.dart';
import 'controller/profile_controller.dart';
import 'widgets/form_profile_w.dart';
import 'widgets/image_profile_w.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return SingleChildScrollView(
      child: Consumer(
        builder: (_, ref, __) {
          final ProfileController profileController = ref.watch(
            profileProvider,
          );
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageProfileW(
                responsive: responsive,
              ),
              SignatureImageGW(
                width: responsive.bwh(20),
                responsive: responsive,
                signatureFile: profileController.signatureFile,
              ),
              FormProfileW(
                responsive: responsive,
              ),
            ],
          );
        },
      ),
    );
  }
}
