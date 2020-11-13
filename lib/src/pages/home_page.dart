import 'package:flutter/material.dart';
import 'package:video_player_app/src/route/app_route.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: TextButton(
          child: Text("Video Page"),
          onPressed: () => Navigator.pushNamed(context, AppRoute.VIDEO_PAGE),
        ),
      ),
    );
  }
}
