import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/icons/digital_contract_icons.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/theme_app_data.dart';
import '../buttons/primary_btn.dart';

/// Tipos de dialogos
enum DialogType {
  success,
  error,
  info,
  custom,
  none,
  internet,
}

/// clase [Dialogs] para los dialogos personalizados
abstract class Dialogs {
  Dialogs._();

  /// Dialogo Simple que aparece con una sola opcion que desaparece
  static Future<void> simple(
    BuildContext context, {
    DialogType? type = DialogType.error,
    required String title,
    required String content,
    TextStyle? textStyle,
    Decoration? decorationContent,
    IconData? iconData,
    Function()? onFunctionAfterOk,
  }) {
    final Responsive responsive = Responsive(context);

    return showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: false,
        onPopInvoked: (value) {
          if (value) return;
        },
        child: AlertDialog.adaptive(
          surfaceTintColor: ThemeAppData.whiteColor,
          backgroundColor: ThemeAppData.whiteColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          insetPadding: const EdgeInsets.all(10),
          title: Center(
            child: Column(
              children: [
                _iconDialogType(
                  responsive,
                  type ?? DialogType.success,
                  iconData,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          content: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: decorationContent,
                  padding: const EdgeInsets.all(
                    2,
                  ),
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            PrimaryBtn(
              label: 'ok',
              fontSize: responsive.dp(1.1),
              horizontalSpace: responsive.bwh(10),
              verticalSpace: responsive.bhp(1),
              onPressed: () {
                context.pop();
                try {
                  onFunctionAfterOk!();
                } catch (_) {}
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Icono dependiendo de la clase [DialogType]
  static Widget _iconDialogType(
    Responsive responsive,
    DialogType type,
    IconData? iconData,
  ) {
    switch (type) {
      case DialogType.success:
        return _icon(
          responsive,
          DigitalContractIcons.circle_check_regular,
        );
      case DialogType.info:
        return _icon(
          responsive,
          DigitalContractIcons.circle_question_regular,
        );
      case DialogType.internet:
        return _icon(
          responsive,
          DigitalContractIcons.wifi_solid,
        );
      case DialogType.error:
        return _icon(
          responsive,
          DigitalContractIcons.circle_xmark_regular,
        );
      case DialogType.none:
        return const SizedBox(
          width: 0,
          height: 0,
        );
      case DialogType.custom:
        return _icon(
          responsive,
          iconData,
        );
      default:
        return _icon(
          responsive,
          iconData,
        );
    }
  }

  /// Icono del dialogo
  static Widget _icon(
    Responsive responsive,
    IconData? iconData,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Icon(
        iconData,
        size: responsive.dp(5),
        color: ThemeAppData.blackColor,
      ),
    );
  }
}
