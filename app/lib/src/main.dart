import 'package:flutter/material.dart';
import 'package:invoices/src/app.dart';
import 'package:invoices/src/app_dependency_resolver.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  AppDependencyResolver.registerDependencies();

  runApp(const MyApp());
}
