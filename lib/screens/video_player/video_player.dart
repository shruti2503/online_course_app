/* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> with WidgetsBindingObserver {

  late final YoutubePlayerController? _Youtubecontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    initializeYouTubePlayer();
  }

  void initializeYouTubePlayer()async{
    await initializeVideo();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    // TODO: implement dispose
    super.dispose();
    _Youtubecontroller!.close();
    Clipboard.setData(ClipboardData(text: ' '));
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

    final paused = state == AppLifecycleState.paused;
    final inactive = state == AppLifecycleState.inactive;
    if(paused || inactive){
      Clipboard.setData(ClipboardData(text: ' '));
      _Youtubecontroller!.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.001;
    return Builder(
        builder: (BuildContext context){
          return Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: true,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6, right: 6, top: 14, bottom: 8),
                        child: Text(
                          'Mathematics 3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Iceland-Regular',
                              fontSize: 29*unitHeightValue,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      )
                    ),
                    const Visibility(visible: true, child: SizedBox(height: 14)),
                    Visibility(
                      visible: true,
                      child: Text(
                        'Lecture 14',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontFamily: 'Iceland-Regular',
                          fontSize: 23*unitHeightValue,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Visibility(visible: true,child: SizedBox(height: 15)),
                    Builder(
                        builder: (BuildContext context){
                          _Youtubecontroller!.onExitFullscreen = (){
                            SystemChrome.setPreferredOrientations([
                              DeviceOrientation.portraitUp,
                            ]);
                          };
                          _Youtubecontroller!.onEnterFullscreen = (){
                            SystemChrome.setPreferredOrientations([
                              DeviceOrientation.landscapeLeft,
                            ]);
                          };
                          _Youtubecontroller!.hidePauseOverlay();
                          _Youtubecontroller!.hideTopMenu();
                          return Stack(
                            children: [
                              YoutubeVideoPlayerView(),
                              AbsorbPointer(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width,
                                  height: 60,
                                  color: Colors.transparent,
                                ),
                              ),
                            ],
                          );
                        }
                    ),
                  ]
              ),
            ),
          );
        }
    );
  }

  initializeVideo() async {
    _Youtubecontroller = YoutubePlayerController(
        initialVideoId: YoutubePlayerController.convertUrlToId('https://www.youtube.com/watch?v=dQw4w9WgXcQ')!,
        params: const YoutubePlayerParams(
            autoPlay: false,
            mute: false,
            enableCaption: false,
            showControls: true,
            showFullscreenButton: true,
            color: 'purple',
            showVideoAnnotations: true,
            strictRelatedVideos: true,
            privacyEnhanced: true
        )
    );
    _Youtubecontroller!.hideTopMenu();
    _Youtubecontroller!.hidePauseOverlay();

//  TODO :  setting the latest lecture video data to the user document
    
  }

  Widget YoutubeVideoPlayerView() {
    final localYoutubeController = _Youtubecontroller;

    if(localYoutubeController!=null) {
      return YoutubePlayerControllerProvider( // Provides controller to all the widget below it.
        controller: localYoutubeController,
        child: YoutubePlayerIFrame(
          aspectRatio: 16 / 9,
          controller: _Youtubecontroller,
        ),
      );
    }
    else{
      return (
          Center(
            child: Container(
              color: Colors.blue,
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          )
      );
    }
  }
}
 */