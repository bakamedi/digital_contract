import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/utils/date_utils.dart';
import '../../../../global/widgets/app_bar.dart';
import '../../../../global/widgets/buttons/primary_btn.dart';
import '../../../../global/widgets/contract_gw.dart';
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
            title: 'Creación de Arrendamiento',
          ),
          body: PageView(
            controller: newContractController.stepperContractController,
            onPageChanged: (page) => newContractController.onChangeTxtByStepper(
              page,
            ),
            children: [
              PropertyStepperOne(
                newContractController: newContractController,
                responsive: responsive,
              ),
              PropertyImagesTwo(
                newContractController: newContractController,
                responsive: responsive,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: responsive.bhp(20),
                ),
                child: ContractGW(
                  landLordName: newContractController.landLordName,
                  nuiLandLord: newContractController.landLordNui,
                  lesseeName: 'NOMBRE_DEl_ARRENDADOR',
                  nuiLessee: 'NUI_DEL_ARRENDADOR',
                  address: newContractController.address,
                  rooms: newContractController.rooms,
                  bathRooms: newContractController.bathRooms,
                  city: newContractController.city,
                  province: newContractController.province,
                  waterPrice: newContractController.serviceWaterPrice,
                  electricityPrice:
                      newContractController.serviceElectricityPrice,
                  internetPrice: newContractController.serviceInternetPrice,
                  payStartDateContract: CustomDateUtils.formatDate(
                    DateTime.now(),
                  ),
                  payEndDateContract: CustomDateUtils.formatDate(
                    DateTime.now(),
                  ),
                  endDateContract: CustomDateUtils.formatDate(
                    DateTime.now(),
                  ),
                  propertyPrice: 200,
                ),
              ),
            ],
          ),
          resizeToAvoidBottomInset: false,
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
