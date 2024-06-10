import 'package:flutter/material.dart';

import '../../../../../../../core/responsive/responsive.dart';
import '../../../../../../global/utils/date_utils.dart';
import '../../../../../../global/widgets/contract_gw.dart';
import '../../../controller/new_contract_controller.dart';

class PropertySteeperThree extends StatelessWidget {
  final Responsive responsive;
  final NewContractController newContractController;
  const PropertySteeperThree({
    super.key,
    required this.responsive,
    required this.newContractController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        electricityPrice: newContractController.serviceElectricityPrice,
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
    );
  }
}
