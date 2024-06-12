import 'package:flutter/material.dart';

import 'package:flutter_meedu/consumer.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/icons/digital_contract_icons.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../global/utils/open_external_app.dart';
import '../../../router/routes/bill_route.dart';
import '../controller/contract_controller.dart';
import 'widgets/bottom_names_w.dart';
import 'widgets/bottom_options_w.dart';
import 'widgets/bottom_sign_w.dart';
import 'widgets/description_w.dart';
import 'widgets/images_top_w.dart';
import 'widgets/title_name_w.dart';

class ContractView extends StatelessWidget {
  const ContractView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Consumer(
      builder: (_, ref, __) {
        final ContractController contractController = ref.watch(
          contractProvider,
        );
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              ImagesTopW(
                responsive: responsive,
              ),
              TitleNameW(
                responsive: responsive,
                title: 'Samanes 4, Mz 888 Solar 342',
                name: 'Bakke Medina Abarca',
              ),
              // SliverToBoxAdapter(
              //   child: Amenities(
              //     responsive: responsive,
              //   ).padding(
              //     EdgeInsets.only(
              //       top: responsive.bhp(0.5),
              //       bottom: responsive.bhp(1.5),
              //       left: responsive.bwh(4),
              //     ),
              //   ),
              // ),
              SliverToBoxAdapter(
                child: DescriptionW(
                  responsive: responsive,
                ),
              ),
              BottomSignW(
                responsive: responsive,
                landLord: 'Bakke Medina Andres Abarca',
                signLandlordType: 'RolestSignature',
                lessee: 'Christian Campodonico Durango',
                signLesseeType: 'NovithaScriptSignature',
                signatureFileLandLord: contractController.signatureLandLordFile,
              ),
              BottomNamesW(
                responsive: responsive,
                landLordName: 'Bakke Medina Abarca',
                landLordIdentification: '09000000000',
                lesseName: 'Christian Campodónico Durango',
                lesseIdentification: '09000000000',
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: BottomOptionsW(
            responsive: responsive,
            iconDataOne: DigitalContractIcons.phone_solid,
            onPressedOne: () => openExternalApp(path: '+593-9875-33-848'),
            iconDataTwo: DigitalContractIcons.comment_solid,
            onPressedTwo: () {},
            iconDataThree: DigitalContractIcons.money_bills_solid,
            onPressedThree: () => context.pushNamed(BillRoute.path),
            iconDataFour: DigitalContractIcons.file_pdf_solid,
            onPressedFour: () {},
          ),
        );
      },
    );
  }
}
