import 'package:flutter/material.dart';
import '../login_create_add/appbar.dart';
import '../login_create_add/sidebar.dart';
class FavoriteBar extends StatefulWidget {
  const FavoriteBar({Key? key}) : super(key: key);

  @override
  State<FavoriteBar> createState() => _FavoriteBarState();
}

class _FavoriteBarState extends State<FavoriteBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      endDrawer: const CornerNavBar(),
      backgroundColor: Color.fromRGBO(33, 40, 68,1),
    );
  }
}
