import 'package:flutter_meedu/providers.dart';
import 'package:go_router/go_router.dart';

import '../modules/home/home_scaffold.dart';
import 'routes/bill_route.dart';
import 'routes/chat_route.dart';
import 'routes/contract_route.dart';
import 'routes/digital_signature_route.dart';
import 'routes/home_route.dart';
import 'routes/messages_route.dart';
import 'routes/new_contract_route.dart';
import 'routes/profile_route.dart';
import 'routes/qr_scan_route.dart';
import 'routes/sign_in_route.dart';
import 'routes/sign_up_route.dart';
import 'routes/splash_router.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: SplashRoute.path,
    routes: [
      SplashRoute.route,
      SignInRoute.route,
      SignUpRoute.route,
      NewContractRoute.route,
      ContractRoute.route,
      ChatsRoute.route,
      BillRoute.route,
      DigitalSignatureRoute.route,
      QrScanRoute.route,
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeScaffold(
            state: state,
            child: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              HomeRoute.route,
            ],
          ),
          StatefulShellBranch(
            routes: [
              MessagesRoute.route,
            ],
          ),
          StatefulShellBranch(
            routes: [
              ProfileRoute.route,
            ],
          ),
        ],
      ),
    ],
  ),
);
