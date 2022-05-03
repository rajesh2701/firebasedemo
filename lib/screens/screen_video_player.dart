import 'package:better_player/better_player.dart';
import 'package:firebasedemo/theme/theme.dart';
import 'package:flutter/material.dart';

class ScreenVideoPlayer extends StatefulWidget {
  final String videoURL;
  const ScreenVideoPlayer({Key? key, required this.videoURL}) : super(key: key);

  @override
  _ScreenVideoPlayerState createState() => _ScreenVideoPlayerState();
}

class _ScreenVideoPlayerState extends State<ScreenVideoPlayer> {
  late BetterPlayerController _betterPlayerController;
  late BetterPlayerDataSource _betterPlayerDataSource;

  @override
  void initState() {
    super.initState();
    BetterPlayerConfiguration betterPlayerConfiguration =
        const BetterPlayerConfiguration(
            aspectRatio: 16 / 9,
            fit: BoxFit.contain,
            autoPlay: true,
            looping: true,
            fullScreenByDefault: true);
    _betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.videoURL,
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(_betterPlayerDataSource);
  }

  @override
  void dispose() {
    _betterPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorsTheme.cardColorBlack,
        appBar: AppBar(
          title: const Text('Video Player'),
        ),
        body: videoPlayer());
  }

  Center videoPlayer() {
    return Center(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer(controller: _betterPlayerController),
      ),
    );
  }
}
