import 'package:flutter/material.dart';

class MiAppBar extends StatefulWidget implements PreferredSizeWidget {
  MiAppBar({
    required this.title,
    this.menuItem = const [],
  });

  final String title;
  final List<Widget> menuItem;
  // final Color? backgroundColor;
  // final Color? textIconColor;
  // final String? icon;
  // final String? title;
  // final double? height;

  // final bool hideBack;

  @override
  _MiAppBarState createState() => _MiAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MiAppBarState extends State<MiAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      actions: widget.menuItem.isEmpty ? null : widget.menuItem,
      //[
      // IconButton(
      //   icon: Icon(Icons.account_circle),
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => UserProfile(),
      //       ),
      //     );
      //   },
      // ),
      // ],
    );
  }
}
