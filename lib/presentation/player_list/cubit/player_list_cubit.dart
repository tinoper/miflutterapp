import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:miflutterapp/repository/database_repository.dart';

import '../models/player.dart';

part 'player_list_state.dart';

class PlayerListCubit extends Cubit<PlayerListState> {
  PlayerListCubit(this._databaseRepository) : super(const PlayerListState());

  final DatabaseRepository _databaseRepository;

  Future<void> getPlayers() async {
    emit(state.copyWith(isLoading: true));

    List<Player> playersData = _databaseRepository.getPlayers();

    Future.delayed(Duration(milliseconds: 1500));

    emit(state.copyWith(
      isLoading: false,
      players: playersData,
    ));
  }

  Future<void> removePlayer(int id) async {
    emit(state.copyWith(isLoading: true));

    List<Player> newPlayers = _databaseRepository.removerPlayer(id);

    Future.delayed(Duration(milliseconds: 2000));

    emit(
      state.copyWith(
        isLoading: false,
        players: newPlayers,
      ),
    );
  }

  Future<void> addPlayer(Player player) async {
    emit(state.copyWith(isLoading: true));

    List<Player> newPlayers = _databaseRepository.addPlayer(player);

    Future.delayed(Duration(milliseconds: 1500));

    emit(
      state.copyWith(
        isLoading: false,
        players: newPlayers,
      ),
    );
  }
}
