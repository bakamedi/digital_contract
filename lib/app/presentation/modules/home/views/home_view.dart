import 'package:digital_contract/app/presentation/global/widgets/custom_text.dart';
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
          SliverToBoxAdapter(
            child: CustomText(
              'Propiedades ',
              fontSize: responsive.dp(2.8),
              fontWeight: FontWeight.w500,
            ),
          ),
          const PropertyContractsView(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: responsive.bhp(10),
            ),
          ),
        ],
      ),
    );
  }
}
