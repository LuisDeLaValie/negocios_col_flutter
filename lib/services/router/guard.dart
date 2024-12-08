import 'package:auto_route/auto_route.dart';
import 'package:hive/hive.dart';
import 'package:negocios_col_flutter/services/router/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    var boxSesion = Hive.box('Sesion');

      // Obtener la ruta completa a la que se intenta navegar
    final targetUrl = resolver.route.pathParams; // "/editar/negocio/1"
    final routeName = resolver.route.name; // Nombre de la ruta definida en @AutoRoute
    final routeArgs = resolver.route.args; // Argumentos de la ruta (si existen)

    print('URL destino: $targetUrl');
    print('Nombre de la ruta: $routeName');
    print('Argumentos: $routeArgs');

    if (boxSesion.isNotEmpty) {
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.redirect(
          LoginNegocio(isLogin: (didLogin) => resolver.next(didLogin)));
    }
  }
}
