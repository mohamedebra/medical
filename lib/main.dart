import 'package:flutter/material.dart';
import 'package:medical/core/routing/app_router.dart';
import 'package:medical/doc_app.dart';

import 'core/DI/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}

