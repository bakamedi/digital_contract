import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';
import '../submodules/property_contracts/views/property_contracts_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Container(
      margin: EdgeInsets.only(
        top: responsive.bhp(8),
        right: responsive.bwh(5),
        left: responsive.bwh(5),
      ),
      child: CustomScrollView(
        slivers: [
          PropertyContractsView(),
        ],
      ),
    );
  }
}
