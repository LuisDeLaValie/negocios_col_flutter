// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:negocios_col_flutter/ui/pages/buscar/buscar_page.dart' as _i2;
import 'package:negocios_col_flutter/ui/pages/home/home_page.dart' as _i6;
import 'package:negocios_col_flutter/ui/pages/negocios/agregar/agregar_page.dart'
    as _i1;
import 'package:negocios_col_flutter/ui/pages/negocios/agregar/editar_s_p_page.dart'
    as _i5;
import 'package:negocios_col_flutter/ui/pages/negocios/crear/crear_negocio_page.dart'
    as _i3;
import 'package:negocios_col_flutter/ui/pages/negocios/editar/editar_negocio_page.dart'
    as _i4;
import 'package:negocios_col_flutter/ui/pages/negocios/listar/listar_page.dart'
    as _i7;
import 'package:negocios_col_flutter/ui/pages/negocios/login/login_negocio.dart'
    as _i8;
import 'package:negocios_col_flutter/ui/pages/negocios/negocio_page.dart'
    as _i9;
import 'package:negocios_col_flutter/ui/pages/negocios/negocio_page_navigation.dart'
    as _i10;
import 'package:negocios_col_flutter/ui/pages/negocios/producto/producto_page.dart'
    as _i11;
import 'package:negocios_col_flutter/ui/pages/negocios/servicio/servicio_page.dart'
    as _i12;

/// generated route for
/// [_i1.AgregarPage]
class AgregarRoute extends _i13.PageRouteInfo<AgregarRouteArgs> {
  AgregarRoute({
    _i14.Key? key,
    required String tipo,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
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

  final _i14.Key? key;

  final String tipo;

  @override
  String toString() {
    return 'AgregarRouteArgs{key: $key, tipo: $tipo}';
  }
}

/// generated route for
/// [_i2.BuscarPage]
class BuscarRoute extends _i13.PageRouteInfo<void> {
  const BuscarRoute({List<_i13.PageRouteInfo>? children})
      : super(
          BuscarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BuscarRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.BuscarPage();
    },
  );
}

/// generated route for
/// [_i3.CrearNegocioPage]
class CrearNegocioRoute extends _i13.PageRouteInfo<void> {
  const CrearNegocioRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CrearNegocioRoute.name,
          initialChildren: children,
        );

  static const String name = 'CrearNegocioRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.CrearNegocioPage();
    },
  );
}

/// generated route for
/// [_i4.EditarNegocioPage]
class EditarNegocioRoute extends _i13.PageRouteInfo<EditarNegocioRouteArgs> {
  EditarNegocioRoute({
    _i14.Key? key,
    required int id,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
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

  final _i14.Key? key;

  final int id;

  @override
  String toString() {
    return 'EditarNegocioRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.EditarSPPage]
class EditarSPRoute extends _i13.PageRouteInfo<EditarSPRouteArgs> {
  EditarSPRoute({
    _i14.Key? key,
    required String tipo,
    required int id,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          EditarSPRoute.name,
          args: EditarSPRouteArgs(
            key: key,
            tipo: tipo,
            id: id,
          ),
          rawPathParams: {
            'tipo': tipo,
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'EditarSPRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<EditarSPRouteArgs>(
          orElse: () => EditarSPRouteArgs(
                tipo: pathParams.getString('tipo'),
                id: pathParams.getInt('id'),
              ));
      return _i5.EditarSPPage(
        key: args.key,
        idNegocio: pathParams.getInt('negocio'),
        tipo: args.tipo,
        id: args.id,
      );
    },
  );
}

class EditarSPRouteArgs {
  const EditarSPRouteArgs({
    this.key,
    required this.tipo,
    required this.id,
  });

  final _i14.Key? key;

  final String tipo;

  final int id;

  @override
  String toString() {
    return 'EditarSPRouteArgs{key: $key, tipo: $tipo, id: $id}';
  }
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomePage();
    },
  );
}

/// generated route for
/// [_i7.ListarPage]
class ListarRoute extends _i13.PageRouteInfo<ListarRouteArgs> {
  ListarRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ListarRoute.name,
          args: ListarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ListarRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args =
          data.argsAs<ListarRouteArgs>(orElse: () => ListarRouteArgs());
      return _i7.ListarPage(
        key: args.key,
        idNegocio: pathParams.getInt('negocio'),
      );
    },
  );
}

class ListarRouteArgs {
  const ListarRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ListarRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.LoginNegocio]
class LoginNegocio extends _i13.PageRouteInfo<LoginNegocioArgs> {
  LoginNegocio({
    _i14.Key? key,
    required dynamic Function(bool) isLogin,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          LoginNegocio.name,
          args: LoginNegocioArgs(
            key: key,
            isLogin: isLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginNegocio';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginNegocioArgs>();
      return _i8.LoginNegocio(
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

  final _i14.Key? key;

  final dynamic Function(bool) isLogin;

  @override
  String toString() {
    return 'LoginNegocioArgs{key: $key, isLogin: $isLogin}';
  }
}

/// generated route for
/// [_i9.NegocioPage]
class NegocioRoute extends _i13.PageRouteInfo<NegocioRouteArgs> {
  NegocioRoute({
    _i14.Key? key,
    required int idNegocio,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<NegocioRouteArgs>(
          orElse: () =>
              NegocioRouteArgs(idNegocio: pathParams.getInt('negocio')));
      return _i9.NegocioPage(
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

  final _i14.Key? key;

  final int idNegocio;

  @override
  String toString() {
    return 'NegocioRouteArgs{key: $key, idNegocio: $idNegocio}';
  }
}

/// generated route for
/// [_i10.NegocioPageNavigation]
class NegocioRouteNavigation extends _i13.PageRouteInfo<void> {
  const NegocioRouteNavigation({List<_i13.PageRouteInfo>? children})
      : super(
          NegocioRouteNavigation.name,
          initialChildren: children,
        );

  static const String name = 'NegocioRouteNavigation';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.NegocioPageNavigation();
    },
  );
}

/// generated route for
/// [_i11.ProductoPage]
class ProductoRoute extends _i13.PageRouteInfo<ProductoRouteArgs> {
  ProductoRoute({
    _i14.Key? key,
    required int? idPS,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductoRouteArgs>(
          orElse: () => ProductoRouteArgs(idPS: pathParams.optInt('id')));
      return _i11.ProductoPage(
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

  final _i14.Key? key;

  final int? idPS;

  @override
  String toString() {
    return 'ProductoRouteArgs{key: $key, idPS: $idPS}';
  }
}

/// generated route for
/// [_i12.ServicioPage]
class ServicioRoute extends _i13.PageRouteInfo<ServicioRouteArgs> {
  ServicioRoute({
    _i14.Key? key,
    required int? idPS,
    int? idProducto,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ServicioRouteArgs>(
          orElse: () => ServicioRouteArgs(idPS: pathParams.optInt('id')));
      return _i12.ServicioPage(
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

  final _i14.Key? key;

  final int? idPS;

  final int? idProducto;

  @override
  String toString() {
    return 'ServicioRouteArgs{key: $key, idPS: $idPS, idProducto: $idProducto}';
  }
}
