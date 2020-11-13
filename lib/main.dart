import 'package:flutter/material.dart';
import 'package:video_player_app/src/route/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: AppRoute.route(),
      initialRoute: AppRoute.HOME_PAGE,
    );
  }
}

