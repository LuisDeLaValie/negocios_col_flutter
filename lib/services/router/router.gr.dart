// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:negocios_col_flutter/ui/pages/buscar/buscar_page.dart' as _i2;
import 'package:negocios_col_flutter/ui/pages/home/home_page.dart' as _i5;
import 'package:negocios_col_flutter/ui/pages/negocios/agregar/agregar_page.dart'
    as _i1;
import 'package:negocios_col_flutter/ui/pages/negocios/crear/crear_negocio_page.dart'
    as _i3;
import 'package:negocios_col_flutter/ui/pages/negocios/editar/editar_negocio_page.dart'
    as _i4;
import 'package:negocios_col_flutter/ui/pages/negocios/listar/listar_page.dart'
    as _i6;
import 'package:negocios_col_flutter/ui/pages/negocios/login/login_negocio.dart'
    as _i7;
import 'package:negocios_col_flutter/ui/pages/negocios/negocio_page.dart'
    as _i8;
import 'package:negocios_col_flutter/ui/pages/negocios/negocio_page_navigation.dart'
    as _i9;
import 'package:negocios_col_flutter/ui/pages/negocios/producto/producto_page.dart'
    as _i10;
import 'package:negocios_col_flutter/ui/pages/negocios/servicio/servicio_page.dart'
    as _i11;

/// generated route for
/// [_i1.AgregarPage]
class AgregarRoute extends _i12.PageRouteInfo<AgregarRouteArgs> {
  AgregarRoute({
    _i13.Key? key,
    required String tipo,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AgregarRoute.name,
          args: AgregarRouteArgs(
            key: key,
            tipo: tipo,
          ),
          rawPathParams: {'tipo': tipo},
          initialChildren: children,
        );

  static const String name = 'AgregarRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<AgregarRouteArgs>(
          orElse: () => AgregarRouteArgs(tipo: pathParams.getString('tipo')));
      return _i1.AgregarPage(
        key: args.key,
        idNegocio: pathParams.getInt('negocio'),
        tipo: args.tipo,
      );
    },
  );
}

class AgregarRouteArgs {
  const AgregarRouteArgs({
    this.key,
    required this.tipo,
  });

  final _i13.Key? key;

  final String tipo;

  @override
  String toString() {
    return 'AgregarRouteArgs{key: $key, tipo: $tipo}';
  }
}

/// generated route for
/// [_i2.BuscarPage]
class BuscarRoute extends _i12.PageRouteInfo<void> {
  const BuscarRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BuscarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BuscarRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.BuscarPage();
    },
  );
}

/// generated route for
/// [_i3.CrearNegocioPage]
class CrearNegocioRoute extends _i12.PageRouteInfo<void> {
  const CrearNegocioRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CrearNegocioRoute.name,
          initialChildren: children,
        );

  static const String name = 'CrearNegocioRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.CrearNegocioPage();
    },
  );
}

/// generated route for
/// [_i4.EditarNegocioPage]
class EditarNegocioRoute extends _i12.PageRouteInfo<EditarNegocioRouteArgs> {
  EditarNegocioRoute({
    _i13.Key? key,
    required int id,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<EditarNegocioRouteArgs>(
          orElse: () =>
              EditarNegocioRouteArgs(id: pathParams.getInt('negocio')));
      return _i4.EditarNegocioPage(
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

  final _i13.Key? key;

  final int id;

  @override
  String toString() {
    return 'EditarNegocioRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomePage();
    },
  );
}

/// generated route for
/// [_i6.ListarPage]
class ListarRoute extends _i12.PageRouteInfo<ListarRouteArgs> {
  ListarRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ListarRoute.name,
          args: ListarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ListarRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args =
          data.argsAs<ListarRouteArgs>(orElse: () => ListarRouteArgs());
      return _i6.ListarPage(
        key: args.key,
        idNegocio: pathParams.getInt('negocio'),
      );
    },
  );
}

class ListarRouteArgs {
  const ListarRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'ListarRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.LoginNegocio]
class LoginNegocio extends _i12.PageRouteInfo<LoginNegocioArgs> {
  LoginNegocio({
    _i13.Key? key,
    required dynamic Function(bool) isLogin,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LoginNegocio.name,
          args: LoginNegocioArgs(
            key: key,
            isLogin: isLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginNegocio';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginNegocioArgs>();
      return _i7.LoginNegocio(
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

  final _i13.Key? key;

  final dynamic Function(bool) isLogin;

  @override
  String toString() {
    return 'LoginNegocioArgs{key: $key, isLogin: $isLogin}';
  }
}

/// generated route for
/// [_i8.NegocioPage]
class NegocioRoute extends _i12.PageRouteInfo<NegocioRouteArgs> {
  NegocioRoute({
    _i13.Key? key,
    required int idNegocio,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<NegocioRouteArgs>(
          orElse: () =>
              NegocioRouteArgs(idNegocio: pathParams.getInt('negocio')));
      return _i8.NegocioPage(
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

  final _i13.Key? key;

  final int idNegocio;

  @override
  String toString() {
    return 'NegocioRouteArgs{key: $key, idNegocio: $idNegocio}';
  }
}

/// generated route for
/// [_i9.NegocioPageNavigation]
class NegocioRouteNavigation extends _i12.PageRouteInfo<void> {
  const NegocioRouteNavigation({List<_i12.PageRouteInfo>? children})
      : super(
          NegocioRouteNavigation.name,
          initialChildren: children,
        );

  static const String name = 'NegocioRouteNavigation';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.NegocioPageNavigation();
    },
  );
}

/// generated route for
/// [_i10.ProductoPage]
class ProductoRoute extends _i12.PageRouteInfo<ProductoRouteArgs> {
  ProductoRoute({
    _i13.Key? key,
    required int? idPS,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductoRouteArgs>(
          orElse: () => ProductoRouteArgs(idPS: pathParams.optInt('id')));
      return _i10.ProductoPage(
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

  final _i13.Key? key;

  final int? idPS;

  @override
  String toString() {
    return 'ProductoRouteArgs{key: $key, idPS: $idPS}';
  }
}

/// generated route for
/// [_i11.ServicioPage]
class ServicioRoute extends _i12.PageRouteInfo<ServicioRouteArgs> {
  ServicioRoute({
    _i13.Key? key,
    required int? idPS,
    int? idProducto,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ServicioRouteArgs>(
          orElse: () => ServicioRouteArgs(idPS: pathParams.optInt('id')));
      return _i11.ServicioPage(
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

  final _i13.Key? key;

  final int? idPS;

  final int? idProducto;

  @override
  String toString() {
    return 'ServicioRouteArgs{key: $key, idPS: $idPS, idProducto: $idProducto}';
  }
}
