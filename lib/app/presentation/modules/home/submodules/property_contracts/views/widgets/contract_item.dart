import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

import '../../../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../../../core/responsive/responsive.dart';
import '../../../../../../../core/theme/theme_app_data.dart';
import '../../../../../../../domain/models/property/response/property_model.dart';
import '../../../../../../global/utils/images_path.dart';
import '../../../../../../global/widgets/amenities.dart';
import '../../../../../../global/widgets/custom_text.dart';
import '../../../../views/utils/go_to_contract.dart';

const radiusCircular = Radius.circular(10);

class ContractItem extends StatelessWidget {
  final Datum property;
  const ContractItem({
    super.key,
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return InkWell(
      onTap: () => goToContract(context),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeAppData.whiteColor,
          borderRadius: const BorderRadius.all(
            radiusCircular,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: radiusCircular,
                      topRight: radiusCircular,
                    ),
                    child: ExtendedImage.asset(
                      ImagesPath.HOME_TEST,
                      width: double.infinity,
                      height: responsive.hp(20),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  _itemPay(
                    name: '\$${property.price} Mensual',
                    responsive: responsive,
                    isMoney: true,
                  ),
                  _signContractIcon(
                    responsive: responsive,
                    iconData: false
                        ? DigitalContractIcons.file_circle_check_solid
                        : DigitalContractIcons.file_invoice_solid,
                  ),
                  Amenities(
                    responsive: responsive,
                    property: property,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                responsive.dp(0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    property.address ?? '',
                  ),
                  CustomText(
                    'Arrendatario: ',
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: responsive.dp(1.55),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemPay({
    required String name,
    required Responsive responsive,
    bool isMoney = false,
    bool isJustIcon = false,
    IconData? iconData,
  }) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(
          top: isMoney ? responsive.bhp(15) : responsive.bhp(1),
          left: isMoney ? responsive.bwh(50) : responsive.bwh(1),
        ),
        padding: EdgeInsets.symmetric(
          vertical: responsive.bhp(1),
          horizontal: responsive.bwh(2),
        ),
        decoration: BoxDecoration(
          color: ThemeAppData.blackColor,
          borderRadius: const BorderRadius.all(
            radiusCircular,
          ),
        ),
        child: iconData == null
            ? Text(
                name,
                style: TextStyle(
                  fontSize: responsive.dp(1.2),
                  fontWeight: FontWeight.w600,
                  color: ThemeAppData.whiteColor,
                ),
              )
            : Row(
                children: [
                  Icon(
                    iconData,
                    color: ThemeAppData.whiteColor,
                    size: responsive.dp(1.2),
                  ),
                  SizedBox(
                    width: isJustIcon ? responsive.bwh(0) : responsive.bwh(2),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: responsive.dp(1.2),
                      fontWeight: FontWeight.w700,
                      color: ThemeAppData.whiteColor,
                    ),
                  )
                ],
              ),
      ),
    );
  }

  Widget _signContractIcon({
    required Responsive responsive,
    required IconData iconData,
  }) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(
          top: responsive.bhp(15),
          left: responsive.bwh(80),
        ),
        padding: EdgeInsets.symmetric(
          vertical: responsive.bhp(1.15),
          horizontal: responsive.bwh(2.5),
        ),
        decoration: BoxDecoration(
          color: ThemeAppData.blackColor,
          borderRadius: const BorderRadius.all(
            radiusCircular,
          ),
        ),
        child: Icon(
          iconData,
          color: ThemeAppData.whiteColor,
          size: responsive.dp(1.5),
        ),
      ),
    );
  }
}
