import 'package:flutter/material.dart';
import 'package:get_boilerplate/src/public/constant.dart';
import 'package:get_boilerplate/src/theme/theme_service.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.refresh,
          size: width / 16.0,
        ),
        onPressed: () {
          ThemeService().changeThemeMode();
        },
      ),
      body: Container(),
    );
  }
}
