import 'package:go_router/go_router.dart';
import 'package:state_management/screens/catalog/my_catalog.dart';
import 'package:state_management/screens/cart/my_cart.dart';

class AppRoute {
  static String catalog = '/catalog';
  static String cart = '/cart';
}

final router = GoRouter(
  initialLocation: AppRoute.catalog,
  routes: [
    GoRoute(
      path: AppRoute.catalog,
      builder: (context, state) => const MyCatalog(),
    ),
    GoRoute(
      path: AppRoute.cart,
      builder: (context, state) => const MyCart(),
    ),
  ],
);
