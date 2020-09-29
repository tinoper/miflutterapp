import 'package:flutter/material.dart';
import 'package:miflutterapp/Repository/players_repository.dart';
import 'package:miflutterapp/models/player.dart';
import 'package:miflutterapp/widgets/item_card_player.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Player> players = playersData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jugadores'),
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, int index) {
          return buildPlayer(players[index]);
        },
      ),
    );
  }
}
