import 'package:flutter/material.dart';
import 'package:my_travaly/init_dependencies.dart';

import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}
