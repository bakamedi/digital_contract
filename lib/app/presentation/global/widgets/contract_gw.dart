import 'package:flutter/material.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';

import '../../global/extensions/widgets_ext.dart';

class ContractGW extends StatelessWidget {
  final String landLordName;
  final String nuiLandLord;
  final String lesseeName;
  final String nuiLessee;
  final int rooms;
  final int bathRooms;
  final String city;
  final String province;
  final String address;
  final double waterPrice;
  final double electricityPrice;
  final double internetPrice;
  final double propertyPrice;
  final String payStartDateContract;
  final String payEndDateContract;
  final String endDateContract;

  const ContractGW({
    super.key,
    required this.landLordName,
    required this.lesseeName,
    required this.rooms,
    required this.bathRooms,
    required this.city,
    required this.province,
    required this.address,
    required this.waterPrice,
    required this.electricityPrice,
    required this.internetPrice,
    required this.propertyPrice,
    required this.payStartDateContract,
    required this.payEndDateContract,
    required this.endDateContract,
    required this.nuiLandLord,
    required this.nuiLessee,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Column(
      children: [
        Text(
          'Contrato de Arrendamiento',
          style: TextStyle(
            fontFamily: 'Verdana',
            fontWeight: FontWeight.w700,
            fontSize: responsive.dp(1.8),
          ),
        ),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              _textItem(
                responsive,
                text:
                    'Por medio del presente dejamos manifiesta constancia, entre nosotros: Sr./Sra. ',
                enters: 1,
              ),
              _textItem(
                responsive,
                text: landLordName,
                isBold: true,
              ),
              _textItem(
                responsive,
                text: ', con cédula de identidad número ',
              ),
              _textItem(
                responsive,
                text: nuiLandLord,
                isBold: true,
              ),
              _textItem(
                responsive,
                text:
                    ', al que más adelante se lo identificará con el nombre de ARRENDADOR. Y al Sr./Sra. ',
              ),
              _textItem(
                responsive,
                text: lesseeName,
                isBold: true,
              ),
              _textItem(
                responsive,
                text: ', con cédula de identidad número ',
              ),
              _textItem(
                responsive,
                text: nuiLessee,
                isBold: true,
              ),
              _textItem(
                responsive,
                text:
                    ', al que más adelante se le identificará con el nombre de ARRENDATARIO.',
              ),
              _textItem(
                responsive,
                text:
                    'Entre ambos convenimos libremente en celebrar el presente contrato de arrendamiento, bajo el tenor de las siguientes cláusulas:',
                enters: 2,
              ),
              _textItem(
                responsive,
                text: 'PRIMERA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' El arrendador da en arrendamiento al arrendatario un departamento ubicado en ',
              ),
              _textItem(
                responsive,
                text: address,
                isBold: true,
              ),
              _textItem(responsive, text: ' y que consta de '),
              _textItem(
                responsive,
                text: _amenityProperty(),
                isBold: true,
              ),
              _textItem(
                responsive,
                text: 'SEGUNDA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' El arrendatario se compromete a mantener en perfectas condiciones el local arrendado y lo destinará única y exclusivamente para el uso de ',
              ),
              _textItem(
                responsive,
                text: 'DEPARTAMENTO/VIVIENDA',
                isBold: true,
              ),
              _textItem(
                responsive,
                text:
                    'sin poder darle otro uso, salvo convenio posterior con la arrendadoro/a.',
              ),
              _textItem(
                responsive,
                text: 'TERCERA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text: ' El canon de arrendamiento será de ',
              ),
              _textItem(
                responsive,
                text: '$propertyPrice',
                isBold: true,
              ),
              _textItem(
                responsive,
                text:
                    'dólares, valor que será cancelado de forma mensual, pagaderos y por mesadas anticipadas entre los tres primeros días del inicio de cada mes, el mismo que dará inicio desde ',
              ),
              _textItem(
                responsive,
                text: payStartDateContract,
                isBold: true,
              ),
              _textItem(
                responsive,
                text: ' hasta el ',
              ),
              _textItem(
                responsive,
                text: payEndDateContract,
                isBold: true,
              ),
              _textItem(
                responsive,
                text:
                    'En caso de ser renovado el contrato, y de así expresarlo el arrendatario (mínimo con tres meses de anticipación) se lo hará previo un reajuste del canon suscrito anteriormente. La renovación comprenderá el período de un año.',
              ),
              _textItem(
                responsive,
                text:
                    'En este tenor las partes renuncian expresamente el acogerse a un canon distinto del acordado tanto para este contrato, cuanto para su futura renovación. Así el arrendatario renuncia a cualquier reclamo o acción legal, que tenga como fuente este antecedente.',
              ),
              _textItem(
                responsive,
                text: 'CUARTA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' El plazo del presente contrato es el de dos años, el mismo que termina el ',
              ),
              _textItem(
                responsive,
                text: endDateContract,
                isBold: true,
              ),
              _textItem(
                responsive,
                text:
                    ', pudiendo ser renovado el mismo de común acuerdo entre las partes en convenio.',
              ),
              _textItem(
                responsive,
                text: 'QUINTA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' Para el término o fin del contrato, las partes deberán comunicar con noventa días de anticipación, conforme lo determina la ley, y en caso de que no se cancelen dos pensiones locativas consecutivas será motivo válido para que la arrendadora pueda dar por terminado el presente contrato.',
              ),
              _textItem(
                responsive,
                text: 'SEXTA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' El arrendatario declara que recibe en perfectas condiciones el local arrendado para el goce de su uso estipulado en la cláusula segunda y comprometiéndose a mantenerlo en buen estado; y, a realizar los arreglos locativos pertinentes que el caso lo amerite si existiere leve deterioro. Por otro lado, toda mejora que se desee hacer en el local arrendado se lo realizará previo el consentimiento de la arrendadora.',
              ),
              _textItem(
                responsive,
                text: 'SÉPTIMA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' El servicio de agua potable será de cuenta de la arrendadora. Y el consumo de luz eléctrica, teléfono, Internet serán cancelados por cuenta exclusiva del arrendatario.',
              ),
              _textItem(
                responsive,
                text: 'OCTAVA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' En caso de presentarse alguna controversia de orden legal, las partes renuncian expresamente domicilio y fuero, y se someten a los jueces competentes de la Ciudad de ',
              ),
              _textItem(
                responsive,
                text: city,
                isBold: true,
              ),
              _textItem(
                responsive,
                text: ' provincia de ',
              ),
              _textItem(
                responsive,
                text: province,
                isBold: true,
              ),
              _textItem(
                responsive,
                text:
                    ' y, al trámite Verbal Sumario que de darse el caso lo amerite.',
              ),
              _textItem(
                responsive,
                text: 'NOVENA.-',
                isBold: true,
                enters: 2,
              ),
              _textItem(
                responsive,
                text:
                    ' Y para dejar constancia entre las partes y convenidas en mutuo acuerdo para su consecuencia final de este acto de contrato de todo lo expuesto en su contenido. Firman conjuntamente en la Ciudad de ',
              ),
              _textItem(
                responsive,
                text: city,
                isBold: true,
              ),
              _textItem(
                responsive,
                text: ', provincia de ',
              ),
              _textItem(
                responsive,
                text: province,
                isBold: true,
              ),
              _textItem(
                responsive,
                text: ' Ecuador, el ',
              ),
              _textItem(
                responsive,
                text: ' $endDateContract',
                isBold: true,
              ),
            ],
          ),
        ),
      ],
    ).padding(
      EdgeInsets.only(
        left: responsive.bwh(5),
        right: responsive.bwh(5),
      ),
    );
  }

  String _amenityProperty() {
    List<String> labels = [];

    if (rooms > 0.0) {
      labels.add('$rooms dormitorios');
    }
    if (bathRooms > 0.0) {
      labels.add('$bathRooms baños');
    }
    if (waterPrice > 0.0) {
      labels.add('servicio de agua');
    }
    if (electricityPrice > 0.0) {
      labels.add('servicio de luz');
    }
    if (internetPrice > 0.0) {
      labels.add('servicio de internet');
    }

    String amenitiesText = labels.join(', ');
    return amenitiesText;
  }
}

TextSpan _textItem(
  Responsive responsive, {
  required String text,
  bool isBold = false,
  int enters = 0,
}) {
  String enter = '';
  if (enters != 0) {
    for (int i = 0; i < enters; i++) {
      enter = '$enter\n';
    }
  }
  return TextSpan(
    text: enter + text,
    style: TextStyle(
      color: ThemeAppData.blackColor,
      fontFamily: 'Verdana',
      fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
      fontSize: responsive.dp(1.5),
    ),
  );
}
