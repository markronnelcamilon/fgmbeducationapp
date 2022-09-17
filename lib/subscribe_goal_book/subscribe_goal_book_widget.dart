import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../goal_book/goal_book_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscribeGoalBookWidget extends StatefulWidget {
  const SubscribeGoalBookWidget({Key? key}) : super(key: key);

  @override
  _SubscribeGoalBookWidgetState createState() =>
      _SubscribeGoalBookWidgetState();
}

class _SubscribeGoalBookWidgetState extends State<SubscribeGoalBookWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'subscribeGoalBook'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
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
        final subscribeGoalBookUsersRecord = snapshot.data!;
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
                Icons.chevron_left_outlined,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('SUBSCRIBE_GOAL_BOOK_chevron_left_outline');
                logFirebaseEvent('IconButton_Navigate-Back');
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title3,
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: StreamBuilder<List<SystemDataRecord>>(
                stream: querySystemDataRecord(
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
                  List<SystemDataRecord> columnSystemDataRecordList =
                      snapshot.data!;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final columnSystemDataRecord =
                      columnSystemDataRecordList.isNotEmpty
                          ? columnSystemDataRecordList.first
                          : null;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Image.asset(
                          'assets/images/albfo_3.png',
                          width: 150,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: Text(
                          'Goal Book',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Text(
                          columnSystemDataRecord!.goalBookDesc!,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SUBSCRIBE_GOAL_BOOK_SUBSCRIBE_BTN_ON_TAP');
                              logFirebaseEvent('Button_Backend-Call');

                              final goalBookCreateData =
                                  createGoalBookRecordData(
                                uid: currentUserUid,
                                dateCreated: getCurrentTimestamp,
                                goalBookID:
                                    '${currentUserUid}${dateTimeFormat('M/d h:mm a', getCurrentTimestamp)}',
                              );
                              await GoalBookRecord.collection
                                  .doc()
                                  .set(goalBookCreateData);
                              logFirebaseEvent('Button_Backend-Call');

                              final subscriptionsCreateData =
                                  createSubscriptionsRecordData(
                                uid: currentUserUid,
                                subscriptionName: 'Goal Book',
                                dateSubscribed: getCurrentTimestamp,
                              );
                              await SubscriptionsRecord.collection
                                  .doc()
                                  .set(subscriptionsCreateData);
                              logFirebaseEvent('Button_Navigate-To');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GoalBookWidget(),
                                ),
                              );
                            },
                            text: 'Subscribe',
                            options: FFButtonOptions(
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SUBSCRIBE_GOAL_BOOK_GO_TO_GOAL_BOOK_BTN_');
                              logFirebaseEvent('Button_Navigate-To');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.scale,
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: GoalBookWidget(),
                                ),
                              );
                            },
                            text: 'Go to Goal Book',
                            options: FFButtonOptions(
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
