
import 'package:flutter/foundation.dart';

import '../utils/index.dart';


final config = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: !kReleaseMode,
  routes: $appRoutes,
);