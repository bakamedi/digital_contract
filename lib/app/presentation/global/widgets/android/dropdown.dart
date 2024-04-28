import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/theme_app_data.dart';

class DropdownAndroidWidget extends StatelessWidget {
  final String selected;
  final List<String> dropdownList;
  final EdgeInsetsGeometry? margin;
  final Function(Object?) onChanged;
  const DropdownAndroidWidget({
    super.key,
    required this.selected,
    required this.dropdownList,
    required this.onChanged,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Container(
      margin: margin,
      height: responsive.height * 0.049,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Expanded(
              child: DropdownButton(
                borderRadius: BorderRadius.circular(10),
                iconSize: responsive.dp(2),
                isExpanded: true,
                value: selected,
                items: _getOptionsDropdown(
                  responsive,
                  dropdownList,
                ),
                underline: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: ThemeAppData.whiteColor),
                    ),
                  ),
                ),
                onChanged: (value) {
                  onChanged(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _getOptionsDropdown(
    Responsive reponsive,
    List<String> list,
  ) {
    List<DropdownMenuItem<String>> optionList = [];
    for (var person in list) {
      optionList.add(DropdownMenuItem(
        value: person,
        child: Text(
          person,
          style: TextStyle(
            fontSize: reponsive.dp(2),
          ),
        ),
      ));
    }
    return optionList;
  }
}
