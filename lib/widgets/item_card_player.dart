import 'package:flutter/material.dart';
import 'package:miflutterapp/models/player.dart';

Widget buildPlayer(Player player) {
  return GestureDetector(
    onTap: () {
      print('Ir al perfil de ${player.lastName}');
    },
    onLongPress: () {
      print('Ofrecer borrar el item de ${player.lastName}');
    },
    child: Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Foto y nombre
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 50,
                  child: Text(
                    player.singlesRank.toString(),
                    style: TextStyle(fontSize: 24, color: Colors.red),
                    softWrap: true,
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/${player.image}'),
                  // SvgPicture.asset('assets/images/${player.image}'),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      player.lastName + ", " + player.firstName,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            //Otros datos
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text('Último resultado: 6-2 6-3 '),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
