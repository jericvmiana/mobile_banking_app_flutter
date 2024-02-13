import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? backgroundColor;
  final List<Widget>? actions;

  const CommonAppBar({
    super.key,
    this.title,
    this.backgroundColor,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      iconTheme: const IconThemeData(color: Colors.white),
      actions: actions,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
