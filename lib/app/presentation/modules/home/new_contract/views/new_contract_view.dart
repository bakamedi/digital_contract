import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/widgets/app_bar.dart';
import '../../../../global/widgets/buttons/primary_btn.dart';
import '../controller/new_contract_controller.dart';
import '../../../../global/extensions/widgets_ext.dart';
import 'widgets/stepper/property_images_two.dart';
import 'widgets/stepper/property_stepper_one.dart';

class NewContractView extends StatelessWidget {
  const NewContractView({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Consumer(
      builder: (_, ref, __) {
        final newContractController = ref.watch(
          newContractProvider,
        );
        return Scaffold(
          appBar: globalAppBar(
            context,
            title: 'Contracto De Arrendamiento',
          ),
          body: PageView(
            controller: newContractController.stepperContractController,
            onPageChanged: (page) => newContractController.onChangeTxtByStepper(
              page,
            ),
            children: [
              const PropertyStepperOne(),
              PropertyImagesTwo(
                newContractController: newContractController,
                responsive: responsive,
              ),
            ],
          ),
          floatingActionButton: PrimaryBtn(
            label: newContractController.nextDoneTxt,
            onPressed: () => newContractController.changeStepper(),
          ).padding(
            EdgeInsets.only(
              bottom: responsive.hp(3),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
