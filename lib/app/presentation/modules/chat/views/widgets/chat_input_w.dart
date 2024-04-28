import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';

import '../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class ChatInputW extends StatelessWidget {
  final Responsive responsive;
  const ChatInputW({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeAppData.backgroundChatInputColor,
      child: Row(
        children: [
          CustomPopup(
            backgroundColor: ThemeAppData.blackColor,
            arrowColor: ThemeAppData.blackColor,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  child: Icon(
                    DigitalContractIcons.file_signature_solid,
                    color: ThemeAppData.whiteColor,
                    size: responsive.dp(2),
                  ),
                ),
                SizedBox(
                  height: responsive.bhp(2),
                ),
                InkWell(
                  child: Icon(
                    DigitalContractIcons.file_invoice_solid,
                    color: ThemeAppData.whiteColor,
                    size: responsive.dp(2),
                  ),
                ),
                SizedBox(
                  height: responsive.bhp(2),
                ),
                InkWell(
                  child: Icon(
                    DigitalContractIcons.camera_solid,
                    color: ThemeAppData.whiteColor,
                    size: responsive.dp(2),
                  ),
                ),
              ],
            ),
            child: Icon(
              DigitalContractIcons.circle_plus_solid,
              size: responsive.dp(2),
            ),
          ).padding(
            EdgeInsets.only(
              left: responsive.bwh(5.5),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: responsive.bwh(2),
            ),
            width: responsive.bwh(1),
            height: responsive.bhp(2),
            decoration: BoxDecoration(
              color: ThemeAppData.backgroundLightColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Escribe una respuesta',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: responsive.bhp(10),
              width: responsive.bwh(10),
              margin: EdgeInsets.only(
                left: responsive.bwh(1),
                right: responsive.bwh(1),
              ),
              decoration: BoxDecoration(
                color: ThemeAppData.blackColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                DigitalContractIcons.paper_plane_regular,
                color: ThemeAppData.whiteColor,
                size: responsive.dp(1.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
