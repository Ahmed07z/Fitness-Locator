import 'package:flutter/material.dart';

class AppbarReuse extends StatefulWidget {
  AppbarReuse({Key? key}) : super(key: key);

  @override
  _AppbarReuseState createState() => _AppbarReuseState();
}

class _AppbarReuseState extends State<AppbarReuse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundColor: Colors.purple, title: '',),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Size get preferredSize => new Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Colors.black,
      title: Text(title),
      centerTitle: true,
      elevation: 0,
    );
  }
}
