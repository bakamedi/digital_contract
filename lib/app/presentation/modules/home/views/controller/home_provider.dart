import 'package:flutter_meedu/providers.dart';

import 'home_controller.dart';
import 'home_state.dart';

final homeProvider = Provider.state<HomeController, HomeState>(
  (_) => HomeController(),
);
