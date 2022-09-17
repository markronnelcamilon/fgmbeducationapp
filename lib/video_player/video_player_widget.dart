import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    Key? key,
    this.videoID,
  }) : super(key: key);

  final String? videoID;

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'videoPlayer'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<VideoRecord>>(
      stream: queryVideoRecord(
        queryBuilder: (videoRecord) =>
            videoRecord.where('id', isEqualTo: widget.videoID),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitFadingCube(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
              ),
            ),
          );
        }
        List<VideoRecord> videoPlayerVideoRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final videoPlayerVideoRecord = videoPlayerVideoRecordList.isNotEmpty
            ? videoPlayerVideoRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('VIDEO_PLAYER_PAGE_close_ICN_ON_TAP');
                logFirebaseEvent('IconButton_Navigate-Back');
                Navigator.pop(context);
              },
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowVideoPlayer(
                    path: videoPlayerVideoRecord!.video!,
                    videoType: VideoType.network,
                    autoPlay: false,
                    looping: true,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Text(
                            videoPlayerVideoRecord!.videoTitle!,
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                        ),
                        Text(
                          videoPlayerVideoRecord!.videoDesription!,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
