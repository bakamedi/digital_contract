import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../widgets/sub_module_app_bar.dart';
import 'widgets/users_w.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return CustomScrollView(
      slivers: [
        SubModuleAppBar(
          responsive: responsive,
          title: 'Mensajes',
        ),
        UsersW(
          responsive: responsive,
        ),
      ],
    );
  }
}
