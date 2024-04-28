import 'package:flutter/material.dart';

import '../../../core/icons/digital_contract_icons.dart';
import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';

const radiusCircular = Radius.circular(10);

class Amenities extends StatelessWidget {
  final Responsive responsive;
  const Amenities({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsive.bhp(5),
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _itemPay(
            name: '2',
            responsive: responsive,
            iconData: DigitalContractIcons.bed_solid,
          ),
          _itemPay(
            name: '2',
            responsive: responsive,
            iconData: DigitalContractIcons.bath_solid,
          ),
          _itemPay(
            name: 'No',
            responsive: responsive,
            iconData: DigitalContractIcons.wifi_solid,
          ),
          _itemPay(
            name: 'Sí',
            responsive: responsive,
            iconData: DigitalContractIcons.lightbulb_solid,
          ),
          _itemPay(
            name: 'No',
            responsive: responsive,
            iconData: DigitalContractIcons.faucet_drip_solid,
          ),
          _itemPay(
            name: 'No',
            responsive: responsive,
            iconData: DigitalContractIcons.paw_solid,
          ),
          _itemPay(
            name: 'No',
            responsive: responsive,
            iconData: DigitalContractIcons.square_parking_solid,
          ),
          _itemPay(
            name: 'No',
            responsive: responsive,
            iconData: DigitalContractIcons.square_parking_solid,
          ),
        ],
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
}
