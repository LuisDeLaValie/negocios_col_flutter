import 'package:auto_route/auto_route.dart';
import 'package:negocios_col_flutter/services/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: BuscarRoute.page,
          path: '/buscar',
        ),
        AutoRoute(
          page: NegocioRoute.page,
          path: '/negocio/:negocio',
          children: [
            AutoRoute(
              page: ProductoRoute.page,
              path: 'producto/:id',
            ),
            AutoRoute(
              page: ServicioRoute.page,
              path: 'servicio/:id',
            ),
            // Add more child routes for NegocioRoute as needed
          ],
        ),
        // Add more routes as needed
      ];
}
