import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../main.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateStoryWidget extends StatefulWidget {
  const CreateStoryWidget({Key? key}) : super(key: key);

  @override
  _CreateStoryWidgetState createState() => _CreateStoryWidgetState();
}

class _CreateStoryWidgetState extends State<CreateStoryWidget> {
  TextEditingController? textController;

  String uploadedFileUrl1 = '';
  String uploadedFileUrl2 = '';
  String uploadedFileUrl3 = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'createStory'});
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Stack(
                    children: [
                      if (functions.hasUploadedMedia(uploadedFileUrl1))
                        InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'CREATE_STORY_PAGE_userImage_ON_TAP');
                            logFirebaseEvent('userImage_Upload-Photo-Video');
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              allowPhoto: false,
                              allowVideo: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
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
                              if (downloadUrls.length == selectedMedia.length) {
                                setState(() =>
                                    uploadedFileUrl1 = downloadUrls.first);
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
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                          ),
                        ),
                      if (functions.hasUploadedMedia(uploadedFileUrl1))
                        FlutterFlowMediaDisplay(
                          path: uploadedFileUrl1,
                          imageBuilder: (path) => Image.network(
                            path,
                            width: MediaQuery.of(context).size.width,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          videoPlayerBuilder: (path) => FlutterFlowVideoPlayer(
                            path: path,
                            width: MediaQuery.of(context).size.width,
                            autoPlay: false,
                            looping: true,
                            showControls: true,
                            allowFullScreen: true,
                            allowPlaybackSpeedMenu: false,
                          ),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'CREATE_STORY_PAGE_close_ICN_ON_TAP');
                                    logFirebaseEvent(
                                        'IconButton_Navigate-Back');
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: TextFormField(
                                    controller: textController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Comment',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 20, 20, 20),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    maxLines: 4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () async {
                          logFirebaseEvent(
                              'CREATE_STORY_Container_d7srp7c3_ON_TAP');
                          logFirebaseEvent('Container_Upload-Photo-Video');
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                            backgroundColor:
                                FlutterFlowTheme.of(context).alternate,
                            textColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
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
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if (downloadUrls.length == selectedMedia.length) {
                              setState(
                                  () => uploadedFileUrl2 = downloadUrls.first);
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
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'CREATE_STORY_PAGE_Column_c0257bss_ON_TAP');
                              logFirebaseEvent('Column_Upload-Photo-Video');
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                imageQuality: 40,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
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
                                      uploadedFileUrl3 = downloadUrls.first);
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
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.photo_library_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 32,
                                ),
                                Text(
                                  'Photo',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'CREATE_STORY_CREATE_STORY_BTN_ON_TAP');
                          logFirebaseEvent('Button_Backend-Call');

                          final userStoriesCreateData =
                              createUserStoriesRecordData(
                            user: currentUserReference,
                            storyVideo: uploadedFileUrl2,
                            storyPhoto: uploadedFileUrl3,
                            storyDescription: textController!.text,
                            storyPostedAt: getCurrentTimestamp,
                            isOwner: true,
                            privacy: 'Public',
                            storyEndAt:
                                functions.storyEndAt(getCurrentTimestamp),
                            dayCompleted: true,
                          );
                          await UserStoriesRecord.collection
                              .doc()
                              .set(userStoriesCreateData);
                          logFirebaseEvent('Button_Navigate-To');
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'community'),
                            ),
                          );
                        },
                        text: 'Create Story',
                        options: FFButtonOptions(
                          width: 140,
                          height: 50,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
