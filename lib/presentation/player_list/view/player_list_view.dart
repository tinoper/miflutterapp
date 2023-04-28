import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:miflutterapp/presentation/player_list/cubit/player_list_cubit.dart';
import 'package:miflutterapp/presentation/player_list/view/view.dart';

import '../../shared/custom_loading_widget.dart';
import '../../user_profile/view/view.dart';

class PlayerListView extends StatelessWidget {
  const PlayerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Players'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => context.pushNamed(UserProfilePage.name),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocConsumer<PlayerListCubit, PlayerListState>(
          bloc: BlocProvider.of(context)..getPlayers(),
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return (state.isLoading)
                ? CustomLoading()
                : ListView.builder(
                    itemCount: state.players.length,
                    itemBuilder: (context, int index) {
                      return ItemCardPlayer(
                        player: state.players[index],
                      );
                    },
                  );
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
