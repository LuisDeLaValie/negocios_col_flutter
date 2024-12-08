// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:negocios_col_flutter/ui/pages/buscar/buscar_page.dart' as _i1;
import 'package:negocios_col_flutter/ui/pages/home/home_page.dart' as _i4;
import 'package:negocios_col_flutter/ui/pages/negocios/crear/crear_negocio_page.dart'
    as _i2;
import 'package:negocios_col_flutter/ui/pages/negocios/editar/editar_negocio_page.dart'
    as _i3;
import 'package:negocios_col_flutter/ui/pages/negocios/login/login_negocio.dart'
    as _i5;
import 'package:negocios_col_flutter/ui/pages/negocios/negocio_page.dart'
    as _i6;
import 'package:negocios_col_flutter/ui/pages/negocios/negocio_page_navigation.dart'
    as _i7;
import 'package:negocios_col_flutter/ui/pages/negocios/producto/producto_page.dart'
    as _i8;
import 'package:negocios_col_flutter/ui/pages/negocios/servicio/servicio_page.dart'
    as _i9;

/// generated route for
/// [_i1.BuscarPage]
class BuscarRoute extends _i10.PageRouteInfo<void> {
  const BuscarRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BuscarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BuscarRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.BuscarPage();
    },
  );
}

/// generated route for
/// [_i2.CrearNegocioPage]
class CrearNegocioRoute extends _i10.PageRouteInfo<void> {
  const CrearNegocioRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CrearNegocioRoute.name,
          initialChildren: children,
        );

  static const String name = 'CrearNegocioRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.CrearNegocioPage();
    },
  );
}

/// generated route for
/// [_i3.EditarNegocioPage]
class EditarNegocioRoute extends _i10.PageRouteInfo<EditarNegocioRouteArgs> {
  EditarNegocioRoute({
    _i11.Key? key,
    required int id,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          EditarNegocioRoute.name,
          args: EditarNegocioRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'negocio': id},
          initialChildren: children,
        );

  static const String name = 'EditarNegocioRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<EditarNegocioRouteArgs>(
          orElse: () =>
              EditarNegocioRouteArgs(id: pathParams.getInt('negocio')));
      return _i3.EditarNegocioPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class EditarNegocioRouteArgs {
  const EditarNegocioRouteArgs({
    this.key,
    required this.id,
  });

  final _i11.Key? key;

  final int id;

  @override
  String toString() {
    return 'EditarNegocioRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.LoginNegocio]
class LoginNegocio extends _i10.PageRouteInfo<LoginNegocioArgs> {
  LoginNegocio({
    _i11.Key? key,
    required dynamic Function(bool) isLogin,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          LoginNegocio.name,
          args: LoginNegocioArgs(
            key: key,
            isLogin: isLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginNegocio';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginNegocioArgs>();
      return _i5.LoginNegocio(
        key: args.key,
        isLogin: args.isLogin,
      );
    },
  );
}

class LoginNegocioArgs {
  const LoginNegocioArgs({
    this.key,
    required this.isLogin,
  });

  final _i11.Key? key;

  final dynamic Function(bool) isLogin;

  @override
  String toString() {
    return 'LoginNegocioArgs{key: $key, isLogin: $isLogin}';
  }
}

/// generated route for
/// [_i6.NegocioPage]
class NegocioRoute extends _i10.PageRouteInfo<NegocioRouteArgs> {
  NegocioRoute({
    _i11.Key? key,
    required int idNegocio,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          NegocioRoute.name,
          args: NegocioRouteArgs(
            key: key,
            idNegocio: idNegocio,
          ),
          rawPathParams: {'negocio': idNegocio},
          initialChildren: children,
        );

  static const String name = 'NegocioRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<NegocioRouteArgs>(
          orElse: () =>
              NegocioRouteArgs(idNegocio: pathParams.getInt('negocio')));
      return _i6.NegocioPage(
        key: args.key,
        idNegocio: args.idNegocio,
      );
    },
  );
}

class NegocioRouteArgs {
  const NegocioRouteArgs({
    this.key,
    required this.idNegocio,
  });

  final _i11.Key? key;

  final int idNegocio;

  @override
  String toString() {
    return 'NegocioRouteArgs{key: $key, idNegocio: $idNegocio}';
  }
}

/// generated route for
/// [_i7.NegocioPageNavigation]
class NegocioRouteNavigation extends _i10.PageRouteInfo<void> {
  const NegocioRouteNavigation({List<_i10.PageRouteInfo>? children})
      : super(
          NegocioRouteNavigation.name,
          initialChildren: children,
        );

  static const String name = 'NegocioRouteNavigation';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.NegocioPageNavigation();
    },
  );
}

/// generated route for
/// [_i8.ProductoPage]
class ProductoRoute extends _i10.PageRouteInfo<ProductoRouteArgs> {
  ProductoRoute({
    _i11.Key? key,
    required int? idPS,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ProductoRoute.name,
          args: ProductoRouteArgs(
            key: key,
            idPS: idPS,
          ),
          rawPathParams: {'id': idPS},
          initialChildren: children,
        );

  static const String name = 'ProductoRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductoRouteArgs>(
          orElse: () => ProductoRouteArgs(idPS: pathParams.optInt('id')));
      return _i8.ProductoPage(
        key: args.key,
        idNegocio: pathParams.getInt('negocio'),
        idPS: args.idPS,
      );
    },
  );
}

class ProductoRouteArgs {
  const ProductoRouteArgs({
    this.key,
    required this.idPS,
  });

  final _i11.Key? key;

  final int? idPS;

  @override
  String toString() {
    return 'ProductoRouteArgs{key: $key, idPS: $idPS}';
  }
}

/// generated route for
/// [_i9.ServicioPage]
class ServicioRoute extends _i10.PageRouteInfo<ServicioRouteArgs> {
  ServicioRoute({
    _i11.Key? key,
    required int? idPS,
    int? idProducto,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ServicioRoute.name,
          args: ServicioRouteArgs(
            key: key,
            idPS: idPS,
            idProducto: idProducto,
          ),
          rawPathParams: {'id': idPS},
          initialChildren: children,
        );

  static const String name = 'ServicioRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ServicioRouteArgs>(
          orElse: () => ServicioRouteArgs(idPS: pathParams.optInt('id')));
      return _i9.ServicioPage(
        key: args.key,
        idNegocio: pathParams.getInt('negocio'),
        idPS: args.idPS,
        idProducto: args.idProducto,
      );
    },
  );
}

class ServicioRouteArgs {
  const ServicioRouteArgs({
    this.key,
    required this.idPS,
    this.idProducto,
  });

  final _i11.Key? key;

  final int? idPS;

  final int? idProducto;

  @override
  String toString() {
    return 'ServicioRouteArgs{key: $key, idPS: $idPS, idProducto: $idProducto}';
  }
}
