import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../../../../core/responsive/responsive.dart';
import '../../../../../../global/widgets/buttons/primary_btn.dart';
import '../../../../../../global/widgets/custom_text.dart';
import '../../../controller/new_contract_controller.dart';
import '../../../utils/pick_images.dart';
import '../basic_services.dart';

class PropertyImagesTwo extends StatelessWidget {
  final Responsive responsive;
  final NewContractController newContractController;

  const PropertyImagesTwo({
    super.key,
    required this.newContractController,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        BasicServices(
          responsive: responsive,
          newContractController: newContractController,
        ),
        const SliverToBoxAdapter(
          child: CustomText(
            'El máximo de imágenes permitidas es de 5 (Opcional)',
            textAlign: TextAlign.center,
          ),
        ),
        SliverToBoxAdapter(
          child: PrimaryBtn(
            verticalSpace: responsive.hp(1),
            horizontalSpace: responsive.wp(20),
            onPressed: () => pickImages(context),
            label: 'Abrir Galería',
          ),
        ),
        SliverToBoxAdapter(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return GridView.builder(
                shrinkWrap: true, // Important to set this to true
                physics:
                    const NeverScrollableScrollPhysics(), // To avoid conflicts with CustomScrollView
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Each row will have two items
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  childAspectRatio: 1.0, // 1:1 aspect ratio for non-first items
                ),
                itemCount: newContractController.gallery.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // First item takes the whole width
                    return SizedBox(
                      width: constraints.maxWidth,
                      height: constraints.maxWidth / 2, // 2:1 aspect ratio
                      child: Image.file(
                        File(newContractController.gallery[index].path),
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    // Other items take half width
                    return Image.file(
                      File(newContractController.gallery[index].path),
                      fit: BoxFit.cover,
                    );
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
