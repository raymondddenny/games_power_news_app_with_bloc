import 'package:bloc/bloc.dart';
import 'package:bloc_news_app/repository/game_repository.dart';
import 'package:equatable/equatable.dart';

import '../models/data_model.dart';

part 'games_event.dart';
part 'games_state.dart';

class GamesBloc extends Bloc<GamesEvent, GamesState> {
  final GameRepository gameRepository;
  GamesBloc({required this.gameRepository}) : super(GamesInitialState()) {
    on<GamesEvent>((event, emit) async {
      if (event is LoadGamesDataEvent) {
        emit(GamesLoadingState());
        List<DataModel>? apiResult = await gameRepository.fetchGamesData();

        if (apiResult != null) {
          emit(GamesLoadedState(apiResult: apiResult));
        } else {
          emit(GameLoadedErrorState());
        }
      }
    });
  }
}
