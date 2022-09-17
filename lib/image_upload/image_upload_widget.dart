import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageUploadWidget extends StatefulWidget {
  const ImageUploadWidget({Key? key}) : super(key: key);

  @override
  _ImageUploadWidgetState createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ImageUpload'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Upload Image',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Lexend Deca',
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 36,
              buttonSize: 36,
              fillColor: Color(0x00F8B229),
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('IMAGE_UPLOAD_close_rounded_ICN_ON_TAP');
                logFirebaseEvent('IconButton_Navigate-Back');
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.94,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          if (!functions.hasUploadedMedia(uploadedFileUrl))
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'IMAGE_UPLOAD_PAGE_userImage_ON_TAP');
                                logFirebaseEvent(
                                    'userImage_Upload-Photo-Video');
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  imageQuality: 40,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  showUploadMessage(
                                    context,
                                    'Uploading file...',
                                    showLoading: true,
                                  );
                                  final downloadUrls = (await Future.wait(
                                          selectedMedia.map((m) async =>
                                              await uploadData(
                                                  m.storagePath, m.bytes))))
                                      .where((u) => u != null)
                                      .map((u) => u!)
                                      .toList();
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  if (downloadUrls.length ==
                                      selectedMedia.length) {
                                    setState(() =>
                                        uploadedFileUrl = downloadUrls.first);
                                    showUploadMessage(
                                      context,
                                      'Success!',
                                    );
                                  } else {
                                    showUploadMessage(
                                      context,
                                      'Failed to upload media',
                                    );
                                    return;
                                  }
                                }
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.96,
                                height: 350,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/emptyState@2x.png',
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6,
                                      color: Color(0x3A000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          if (functions.hasUploadedMedia(uploadedFileUrl))
                            FlutterFlowMediaDisplay(
                              path: uploadedFileUrl,
                              imageBuilder: (path) => Image.network(
                                path,
                                width: MediaQuery.of(context).size.width * 0.96,
                                height: 350,
                                fit: BoxFit.cover,
                              ),
                              videoPlayerBuilder: (path) =>
                                  FlutterFlowVideoPlayer(
                                path: path,
                                width: 300,
                                autoPlay: false,
                                looping: true,
                                showControls: true,
                                allowFullScreen: true,
                                allowPlaybackSpeedMenu: false,
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'UPLOAD TO ACHIEVEMENT BOARD',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            ToggleIcon(
                              onPressed: () async {
                                setState(() =>
                                    FFAppState().uploadToVisionBoard =
                                        !FFAppState().uploadToVisionBoard);
                              },
                              value: FFAppState().uploadToVisionBoard,
                              onIcon: Icon(
                                Icons.check_box,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25,
                              ),
                              offIcon: Icon(
                                Icons.check_box_outline_blank,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 16, 10, 0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('IMAGE_UPLOAD_PAGE_UPLOAD_BTN_ON_TAP');
                logFirebaseEvent('Button_Backend-Call');

                final visionBoardCreateData = createVisionBoardRecordData(
                  userID: currentUserUid,
                  isAchievement: FFAppState().uploadToVisionBoard,
                  date: getCurrentTimestamp,
                  image: uploadedFileUrl,
                );
                await VisionBoardRecord.collection
                    .doc()
                    .set(visionBoardCreateData);
                logFirebaseEvent('Button_Show-Snack-Bar');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Successfully uploaded and save your image',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: Color(0x00000000),
                  ),
                );
                logFirebaseEvent('Button_Navigate-Back');
                Navigator.pop(context);
              },
              text: 'Upload',
              options: FFButtonOptions(
                width: double.infinity,
                height: 50,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
