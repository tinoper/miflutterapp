import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:miflutterapp/Repository/players_repository.dart';
import 'package:miflutterapp/models/player.dart';
import 'package:miflutterapp/pages/form_page.dart';
import 'package:miflutterapp/pages/profile_page.dart';
import 'package:miflutterapp/widgets/common/app_bar.dart';
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
      appBar: MiAppBar(
        title: 'Players',
        menuItem: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              context.router.pushNamed('/UserProfile');
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => UserProfile(),
              //   ),
              // );
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
        onPressed: () {
          context.router.pushNamed('/FormPlayer');
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (BuildContext context) => FormPlayer()));
        },
      ),
    );
  }
}
