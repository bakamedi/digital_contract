import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/theme_app_data.dart';

class DropdownIosWidget extends StatelessWidget {
  final String selected;
  final List<String> dropdownList;
  final Function(Object?) onChanged;
  final String closeTxt;
  final EdgeInsetsGeometry? margin;
  const DropdownIosWidget({
    super.key,
    required this.selected,
    required this.dropdownList,
    required this.onChanged,
    required this.closeTxt,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: ThemeAppData.blackColor,
        ),
      ),
      height: responsive.bhp(5.5),
      child: CupertinoButton(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                selected,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ThemeAppData.blackColor,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: ThemeAppData.blackColor,
            )
          ],
        ),
        onPressed: () => _createCupertinoDropDown(context),
      ),
    );
  }

  void _createCupertinoDropDown(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          actions: _getCupertinoOptionsDropdown(context),
          cancelButton: CupertinoActionSheetAction(
            isDestructiveAction: true,
            child: Text(closeTxt),
            onPressed: () => Navigator.pop(context),
          ),
        );
      },
    );
  }

  List<Widget> _getCupertinoOptionsDropdown(BuildContext context) {
    List<Widget> optionList = [];
    for (var item in dropdownList) {
      optionList.add(
        CupertinoActionSheetAction(
          child: Text(
            item,
            style: TextStyle(
              color: ThemeAppData.blueColor,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          onPressed: () {
            context.pop();
            onChanged(item);
          },
        ),
      );
    }
    return optionList;
  }
}
