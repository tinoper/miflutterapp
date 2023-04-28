import '../presentation/player_list/models/player.dart';

abstract class DatabaseRepository {
  List<Player> getPlayers();
  List<Player> addPlayer(Player player);
  List<Player> removerPlayer(int id);
}
