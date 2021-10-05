import 'package:flutter/material.dart';
import 'package:miflutterapp/models/player.dart';
import 'package:miflutterapp/presentation/ui_params/colors.dart';
import 'package:miflutterapp/presentation/ui_params/miflutterapp_sizes.dart';

//TODO change to class
Widget buildPlayer(Player player) {
  return GestureDetector(
    onTap: () {
      print('Ir al perfil de ${player.lastName}');
    },
    onLongPress: () {
      print('Ofrecer borrar el item de ${player.lastName}');
    },
    child: Card(
      elevation: MiFlutterAppSizes.playerCardElevation,
      child: Padding(
        padding: const EdgeInsets.all(MiFlutterAppSizes.playerCardPadding),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                /// playerRanking
                Container(
                  alignment: Alignment.center,
                  width: MiFlutterAppSizes.playerRankingSpace,
                  child: Text(
                    player.singlesRank.toString(),
                    style: TextStyle(
                        fontSize: MiFlutterAppSizes.t3,
                        color: MiFlutterAppColors.primaryColor),
                    softWrap: true,
                  ),
                ),

                /// playerPhoto
                CircleAvatar(
                  radius: MiFlutterAppSizes.avatar5,
                  backgroundImage: AssetImage('assets/images/${player.image}'),
                ),
                SizedBox(
                  width: MiFlutterAppSizes.smallSpace * 2,
                ),

                /// playerName
                Expanded(
                  child: Container(
                    child: Text(
                      player.lastName + ", " + player.firstName,
                      style: TextStyle(fontSize: MiFlutterAppSizes.t3),
                    ),
                  ),
                ),
              ],
            ),
            //Otros datos
            Row(
              children: [
                SizedBox(
                  width: MiFlutterAppSizes.spaceLeftLastScorePlayerCard,
                ),
                Text(
                  'Último resultado: 6-2 6-3 ',
                  style: TextStyle(fontSize: MiFlutterAppSizes.t7),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
