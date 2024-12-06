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
          page: NegocioRouteNavigation.page,
          path: '/negocio/:negocio',
          children: [
            AutoRoute(
              initial: true,
              page: NegocioRoute.page,
              path: '',
            ),
            AutoRoute(
              page: ServicioRoute.page,
              path: 'servicio/:id',
            ),
            AutoRoute(
              page: ProductoRoute.page,
              path: 'producto/:id',
            ),
          ],
        ),

        // Add more routes as needed
      ];
}
