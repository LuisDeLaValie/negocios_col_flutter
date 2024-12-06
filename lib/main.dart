import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'services/router/router.dart';

Future<void> main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('Sesion');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      routerConfig: _appRouter.config(),
    );
  }
}
