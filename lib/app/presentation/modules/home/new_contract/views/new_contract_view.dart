import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/widgets/app_bar.dart';
import '../../../../global/widgets/buttons/primary_btn.dart';
import '../controller/new_contract_controller.dart';
import '../../../../../core/extensions/widgets_ext.dart';
import '../utils/change_stepper.dart';
import 'widgets/stepper/property_images_two.dart';
import 'widgets/stepper/property_stepper_one.dart';
import 'widgets/stepper/property_stepper_three.dart';

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
            title: 'Creación de Arrendamiento',
          ),
          body: PageView(
            controller: newContractController.stepperContractController,
            onPageChanged: (page) => newContractController.onChangeTxtByStepper(
              page,
            ),
            children: [
              PropertyStepperOne(
                responsive: responsive,
                newContractController: newContractController,
              ),
              PropertyImagesTwo(
                responsive: responsive,
                newContractController: newContractController,
              ),
              PropertySteeperThree(
                responsive: responsive,
                newContractController: newContractController,
              ),
            ],
          ),
          resizeToAvoidBottomInset: false,
          floatingActionButton: PrimaryBtn(
            label: newContractController.nextDoneTxt,
            onPressed: () => changeStepper(context),
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
