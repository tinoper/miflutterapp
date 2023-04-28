import 'package:miflutterapp/presentation/player_list/models/player.dart';

class DatabaseService {
  final List<Player> _db = playersData;

  List<Player> getPlayers() {
    return _db;
  }

  List<Player> addPlayer(Player player) {
    _db.add(player);
    List<Player> newPlayers = _db;
    return newPlayers;
  }

  List<Player> removerPlayer(int id) {
    _db.removeWhere((element) => element.id == id);
    List<Player> newPlayers = _db;
    return newPlayers;
  }
}

final List<Player> playersData = [
  Player(1, "Nadal", "Rafael", 0, 'player_avatar.png', 1, 0),
  Player(2, "Djokovic", "Novak", 0, 'player_avatar.png', 2, 0),
  Player(3, "Federer", "Roger", 0, 'player_avatar.png', 3, 0),
  Player(3, "Medvedev", "Nadiil", 0, 'player_avatar.png', 4, 0),
  Player(3, "Thiem", "Dominic", 0, 'player_avatar.png', 5, 0),
  Player(3, "Tsitsipas", "Stefanos", 0, 'player_avatar.png', 6, 0),
  Player(3, "Zverev", "Alexander", 0, 'player_avatar.png', 7, 0),
  Player(3, "Berrettini", "Mateo", 0, 'player_avatar.png', 8, 0),
  Player(3, "Bautista Agut", "Roberto", 0, 'player_avatar.png', 9, 0),
  Player(3, "Monfils", "Gael", 0, 'player_avatar.png', 10, 0),
];
