import 'package:bloc_news_app/bloc/games_bloc.dart';
import 'package:bloc_news_app/routes/custom_router.dart';
import 'package:bloc_news_app/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'repository/game_repository.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => GameRepository(),
    child: BlocProvider<GamesBloc>(
      create: (context) => GamesBloc(gameRepository: context.read<GameRepository>()),
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
