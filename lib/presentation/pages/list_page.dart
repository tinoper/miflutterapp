import 'package:flutter/material.dart';
import 'package:miflutterapp/Repository/players_repository.dart';
import 'package:miflutterapp/locator.dart';
import 'package:miflutterapp/models/player.dart';
import 'package:miflutterapp/routes/router.gr.dart';
import 'package:miflutterapp/presentation/widgets/common/app_bar.dart';
import 'package:miflutterapp/presentation/widgets/item_card_player.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Player> players = playersData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MiAppBar(
        title: 'Players',
        menuItem: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              _navigateToUserProfile();
            },
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
        onPressed: () => _navigateToFormPlayer(),
      ),
    );
  }

  void _navigateToUserProfile() {
    locator<AppRouter>().pushNamed('/UserProfile');
  }

  void _navigateToFormPlayer() {
    locator<AppRouter>().pushNamed('/FormPlayer');
  }
}
