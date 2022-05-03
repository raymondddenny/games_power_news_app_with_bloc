import 'package:auto_route/auto_route.dart';

import '../views/detail_page.dart';
import '../views/homepage.dart';
import 'package:flutter/material.dart';
import '../models/data_model.dart';

part 'custom_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: HomePage, initial: true),
  AutoRoute(page: DetailPage),
])
class AppRouter extends _$AppRouter {}
