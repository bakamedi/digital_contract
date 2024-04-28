import 'package:flutter/material.dart';

import 'package:flutter_meedu/consumer.dart';

import '../../../../core/responsive/responsive.dart';
import 'widgets/contract_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Consumer(
      builder: (_, ref, __) {
        return Container(
          margin: EdgeInsets.only(
            top: responsive.bhp(8),
            right: responsive.bwh(5),
            left: responsive.bwh(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Bienvenido a Contratos de Alquileres Digitales',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: responsive.dp(2.5),
                ),
              ),
              SizedBox(
                height: responsive.bhp(2),
              ),
              Text(
                'Contratos Firmados',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: responsive.dp(2.2),
                ),
              ),
              const ContractItem(
                isSignContract: true,
              ),
              /*
              PrimaryBtn(
                label: 'Crear nuevo contrato',
                onPressed: () {
                  //context.goNamed(NewContractRoute.path);
                  //context.go(NewContractRoute.path);
                  context.pushNamed(NewContractRoute.path);
                },
              ),
              */
              SizedBox(
                height: responsive.bhp(2),
              ),
              Text(
                'Contratos No Firmados',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: responsive.dp(2.2),
                ),
              ),
              const ContractItem(
                isSignContract: false,
              ),
            ],
          ),
        );
      },
    );
  }
}
