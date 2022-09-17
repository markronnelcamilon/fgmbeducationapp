import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/image_move_back_to_v_b_widget.dart';
import '../components/image_update_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../image_upload/image_upload_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class VisionBoardWidget extends StatefulWidget {
  const VisionBoardWidget({Key? key}) : super(key: key);

  @override
  _VisionBoardWidgetState createState() => _VisionBoardWidgetState();
}

class _VisionBoardWidgetState extends State<VisionBoardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'visionBoard'});
  }

  @override
  Widget build(BuildContext context) {
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
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 24,
          ),
          onPressed: () async {
            logFirebaseEvent('VISION_BOARD_chevron_left_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Vision Board',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          logFirebaseEvent('VISION_BOARD_FloatingActionButton_e9evu9');
          logFirebaseEvent('FloatingActionButton_Navigate-To');
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 300),
              reverseDuration: Duration(milliseconds: 300),
              child: ImageUploadWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        label: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.upload_sharp,
              color: Colors.white,
              size: 24,
            ),
            Text(
              'Upload',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    labelColor: FlutterFlowTheme.of(context).primaryText,
                    unselectedLabelColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    labelStyle: FlutterFlowTheme.of(context).subtitle2,
                    indicatorColor: FlutterFlowTheme.of(context).primaryColor,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        text: 'Vision Board',
                      ),
                      Tab(
                        text: 'Achievement Board',
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: StreamBuilder<List<VisionBoardRecord>>(
                              stream: queryVisionBoardRecord(
                                queryBuilder: (visionBoardRecord) =>
                                    visionBoardRecord
                                        .where('userID',
                                            isEqualTo: currentUserUid)
                                        .where('isAchievement',
                                            isEqualTo: false),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: SpinKitFadingCube(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 40,
                                      ),
                                    ),
                                  );
                                }
                                List<VisionBoardRecord>
                                    gridViewVisionBoardRecordList =
                                    snapshot.data!;
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      gridViewVisionBoardRecordList.length,
                                  itemBuilder: (context, gridViewIndex) {
                                    final gridViewVisionBoardRecord =
                                        gridViewVisionBoardRecordList[
                                            gridViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 8, 4, 8),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'VISION_BOARD_PAGE_Image_vw7v4frs_ON_TAP');
                                          logFirebaseEvent(
                                              'Image_Expand-Image');
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.network(
                                                  gridViewVisionBoardRecord
                                                      .image!,
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: gridViewVisionBoardRecord
                                                    .image!,
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        onLongPress: () async {
                                          logFirebaseEvent(
                                              'VISION_BOARD_Image_vw7v4frs_ON_LONG_PRES');
                                          logFirebaseEvent(
                                              'Image_Bottom-Sheet');
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.35,
                                                  child: ImageUpdateWidget(
                                                    isAchievement:
                                                        gridViewVisionBoardRecord
                                                            .isAchievement,
                                                    imageRR:
                                                        gridViewVisionBoardRecord
                                                            .reference,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Hero(
                                          tag: gridViewVisionBoardRecord.image!,
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              gridViewVisionBoardRecord.image!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: StreamBuilder<List<VisionBoardRecord>>(
                            stream: queryVisionBoardRecord(
                              queryBuilder: (visionBoardRecord) =>
                                  visionBoardRecord
                                      .where('userID',
                                          isEqualTo: currentUserUid)
                                      .where('isAchievement', isEqualTo: true),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: SpinKitFadingCube(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 40,
                                    ),
                                  ),
                                );
                              }
                              List<VisionBoardRecord>
                                  gridViewVisionBoardRecordList =
                                  snapshot.data!;
                              return InkWell(
                                onLongPress: () async {
                                  logFirebaseEvent(
                                      'VISION_BOARD_GridView_gqzvnkj8_ON_LONG_P');
                                  logFirebaseEvent('GridView_Bottom-Sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.35,
                                          child: ImageMoveBackToVBWidget(),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      gridViewVisionBoardRecordList.length,
                                  itemBuilder: (context, gridViewIndex) {
                                    final gridViewVisionBoardRecord =
                                        gridViewVisionBoardRecordList[
                                            gridViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'VISION_BOARD_PAGE_Image_eaasx9dn_ON_TAP');
                                          logFirebaseEvent(
                                              'Image_Expand-Image');
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.network(
                                                  gridViewVisionBoardRecord
                                                      .image!,
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: gridViewVisionBoardRecord
                                                    .image!,
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        onLongPress: () async {
                                          logFirebaseEvent(
                                              'VISION_BOARD_Image_eaasx9dn_ON_LONG_PRES');
                                          logFirebaseEvent(
                                              'Image_Bottom-Sheet');
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.35,
                                                  child:
                                                      ImageMoveBackToVBWidget(
                                                    isAchievement:
                                                        gridViewVisionBoardRecord
                                                            .isAchievement,
                                                    imageRR:
                                                        gridViewVisionBoardRecord
                                                            .reference,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Hero(
                                          tag: gridViewVisionBoardRecord.image!,
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              gridViewVisionBoardRecord.image!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
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
    );
  }
}
