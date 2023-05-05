import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miflutterapp/presentation/player_list/cubit/player_list_cubit.dart';

import '../../../ui_params/miflutterapp_sizes.dart';
import '../../models/player.dart';

class ItemCardPlayer extends StatelessWidget {
  const ItemCardPlayer({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onLongPress: () async {
        await context.read<PlayerListCubit>().removePlayer(player.id);
      },
      child: Card(
        elevation: MiFlutterAppSizes.playerCardElevation,
        child: Padding(
          padding: const EdgeInsets.all(MiFlutterAppSizes.playerCardPadding),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: MiFlutterAppSizes.playerRankingSpace,
                    child: Text(
                      player.singlesRank.toString(),
                      style: TextStyle(
                        fontSize: MiFlutterAppSizes.t3,
                      ),
                      softWrap: true,
                    ),
                  ),
                  CircleAvatar(
                    radius: MiFlutterAppSizes.avatar5,
                    backgroundImage:
                        AssetImage('assets/images/${player.image}'),
                  ),
                  SizedBox(
                    width: MiFlutterAppSizes.smallSpace * 2,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        player.lastName + ", " + player.firstName,
                        style: TextStyle(
                          fontSize: MiFlutterAppSizes.t3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MiFlutterAppSizes.spaceLeftLastScorePlayerCard,
                  ),
                  Text(
                    'Último resultado: 6-2 6-3 ',
                    style: TextStyle(
                      fontSize: MiFlutterAppSizes.t7,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
