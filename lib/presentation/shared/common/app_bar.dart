import 'package:flutter/material.dart';

class MiAppBar extends StatefulWidget implements PreferredSizeWidget {
  MiAppBar({
    required this.title,
    this.menuItem = const [],
  });

  final String title;
  final List<Widget> menuItem;

  @override
  _MiAppBarState createState() => _MiAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MiAppBarState extends State<MiAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      actions: widget.menuItem.isEmpty ? null : widget.menuItem,
    );
  }
}
