import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';
import 'widgets/bill_app_bar.dart';
import 'widgets/bill_options_w.dart';
import 'widgets/bills_w.dart';

class BillView extends StatelessWidget {
  const BillView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          BillAppBar(
            responsive: responsive,
          ),
          BillsW(
            responsive: responsive,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: responsive.bhp(16),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BillOptionsW(
        responsive: responsive,
      ),
    );
  }
}
