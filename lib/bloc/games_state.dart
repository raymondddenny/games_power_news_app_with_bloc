part of 'games_bloc.dart';

abstract class GamesState extends Equatable {
  const GamesState();

  @override
  List<Object> get props => [];
}

class GamesInitialState extends GamesState {}

class GamesLoadingState extends GamesState {}

class GamesLoadedState extends GamesState {
  final List<DataModel> apiResult;
  const GamesLoadedState({
    required this.apiResult,
  });
  @override
  List<Object> get props => [apiResult];
}

class GameLoadedErrorState extends GamesState {}
