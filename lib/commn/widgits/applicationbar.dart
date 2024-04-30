import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget implements PreferredSizeWidget{
  const ApplicationBar({super.key, this.backgroundColor, required this.title, required this.action, required this.leading});
  final Color? backgroundColor;
  final Widget title;
  final Widget leading;
  final Widget action;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      toolbarHeight: 98,
      centerTitle: true,
      leading: leading,
      actions: [
        action
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
