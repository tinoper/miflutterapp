part of 'player_list_cubit.dart';

class PlayerListState extends Equatable {
  const PlayerListState({
    this.isLoading = false,
    this.player,
    this.players = const [],
  });

  final bool isLoading;
  final Player? player;
  final List<Player> players;

  List<Object?> get props => [
        isLoading,
        player,
        players,
      ];

  PlayerListState copyWith({
    bool? isLoading,
    Player? player,
    List<Player>? players,
  }) {
    return PlayerListState(
      isLoading: isLoading ?? this.isLoading,
      player: player ?? this.player,
      players: players ?? this.players,
    );
  }
}
