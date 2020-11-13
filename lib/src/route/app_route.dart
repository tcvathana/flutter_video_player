import 'package:flutter/material.dart';
import '../pages/pages.dart';

class AppRoute{
  static const String HOME_PAGE = 'HomePage';
  static const String VIDEO_PAGE = 'VideoPage';

  static Map<String, WidgetBuilder> route() => {
    HOME_PAGE: (_) => HomePage(),
    VIDEO_PAGE: (_) => VideoPage(),
  };
}