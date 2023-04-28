import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miflutterapp/presentation/player_list/cubit/player_list_cubit.dart';
import 'package:miflutterapp/presentation/player_list/view/player_list_view.dart';
import 'package:miflutterapp/repository/database_repository_impl.dart';

class PlayerListPage extends StatelessWidget {
  static const name = 'player-list';
  const PlayerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayerListCubit(DatabaseRepositoryImpl()),
      child: PlayerListView(),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:miflutterapp/Repository/players_repository.dart';
// import 'package:miflutterapp/presentation/player_list/view/view.dart';
// import 'package:miflutterapp/presentation/user_profile/view/view.dart';

// class PlayerListPage extends StatefulWidget {
//   static const name = 'player-list';

//   const PlayerListPage({super.key});

//   @override
//   _PlayerListPageState createState() => _PlayerListPageState();
// }

// class _PlayerListPageState extends State<PlayerListPage> {
//   List players = playersData;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Players'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle),
//             onPressed: () => context.pushNamed(UserProfilePage.name),
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: ListView.builder(
//           itemCount: players.length,
//           itemBuilder: (context, int index) {
//             return buildPlayer(players[index]);
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(
//           Icons.add,
//         ),
//         onPressed: () {},
//       ),
//     );
//   }
// }
