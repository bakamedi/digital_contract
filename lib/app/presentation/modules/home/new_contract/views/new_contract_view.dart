import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../global/widgets/app_bar.dart';
import '../../../../global/widgets/buttons/primary_btn.dart';
import 'widgets/basic_services.dart';
import 'widgets/owner_services.dart';

class NewContractView extends StatelessWidget {
  const NewContractView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(context, title: 'Contracto De Arrendamiento'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OwnerServices(),
            const BasicServices(),
            PrimaryBtn(
              label: 'Crear nuevo contrato',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
