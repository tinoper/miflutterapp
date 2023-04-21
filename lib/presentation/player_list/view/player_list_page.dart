import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miflutterapp/Repository/players_repository.dart';
import 'package:miflutterapp/presentation/shared/common/app_bar.dart';
import 'package:miflutterapp/presentation/player_list/view/widgets/item_card_player.dart';
import 'package:miflutterapp/presentation/user_profile/view/view.dart';

class PlayerListPage extends StatefulWidget {
  static const name = 'player-list';

  const PlayerListPage({super.key});

  @override
  _PlayerListPageState createState() => _PlayerListPageState();
}

class _PlayerListPageState extends State<PlayerListPage> {
  List players = playersData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MiAppBar(
        title: 'Players',
        menuItem: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => context.pushNamed(UserProfilePage.name),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: players.length,
          itemBuilder: (context, int index) {
            return buildPlayer(players[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
    );
  }
}
