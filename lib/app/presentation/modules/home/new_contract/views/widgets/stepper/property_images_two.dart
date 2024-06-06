import 'dart:io';

import 'package:flutter/material.dart';
import '../../../../../../../core/responsive/responsive.dart';

import '../../../../../../global/widgets/buttons/primary_btn.dart';
import '../../../../../../global/widgets/custom_text.dart';
import '../../../controller/new_contract_controller.dart';
import '../../../utils/pick_images.dart';

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CustomText('El maximo de imágenes permitidas es de 5'),
          PrimaryBtn(
            verticalSpace: responsive.hp(1),
            horizontalSpace: responsive.wp(20),
            onPressed: () => pickImages(context),
            label: 'Abrir Galería',
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Cada fila tendrá dos elementos
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                    childAspectRatio:
                        1.0, // Relación de aspecto 1:1 para elementos que no son el primero
                  ),
                  itemCount: newContractController.gallery.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      // Primer elemento ocupa todo el ancho
                      return SizedBox(
                        width: responsive.bwh(100),
                        height: constraints.maxWidth /
                            2, // Mantener relación de aspecto 2:1
                        child: Image.file(
                          File(newContractController.gallery[index].path),
                          fit: BoxFit.cover,
                        ),
                      );
                    } else {
                      // Los demás elementos ocupan la mitad del ancho
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
      ),
    );
  }
}
