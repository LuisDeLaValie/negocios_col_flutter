import 'package:auto_route/auto_route.dart';
import 'package:negocios_col_flutter/services/router/guard.dart';
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
          page: EditarNegocioRoute.page,
          path: '/editar/negocio/:negocio',
          guards: [AuthGuard()],
        ),

        AutoRoute(
          page: CrearNegocioRoute.page,
          path: '/crear/negocio',
        ),

        AutoRoute(
          page: LoginNegocio.page,
          path: '/negocio/login',
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
            AutoRoute(
              page: ListarRoute.page,
              path: 'listar',
            ),
            AutoRoute(
              page: AgregarRoute.page,
              path: 'listar/agregar/:tipo',
            ),
            AutoRoute(
              page: EditarSPRoute.page,
              path: 'listar/:tipo/:id',
            ),
          ],
        ),

        // Add more routes as needed
      ];
}
