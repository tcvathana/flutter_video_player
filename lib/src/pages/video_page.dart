import 'package:flutter/material.dart';
import 'package:video_player_app/src/route/app_route.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'gWai7fYp9PY',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        startAt: 20,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          height: 100,
          width: 250,
          child: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
              topActions: [
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  color: Colors.white,
                  onPressed: () =>
                      Navigator.pop(context),
                ),
              ],
            ),
            builder: (BuildContext context, Widget player) {
              return Column(
                children: [
                  player
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
