import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../day_challenge/day_challenge_widget.dart';
import '../day_challenge90/day_challenge90_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Subscribe21dayWidget extends StatefulWidget {
  const Subscribe21dayWidget({Key key}) : super(key: key);

  @override
  _Subscribe21dayWidgetState createState() => _Subscribe21dayWidgetState();
}

class _Subscribe21dayWidgetState extends State<Subscribe21dayWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'subscribe21day'});
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
            Icons.chevron_left_outlined,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('SUBSCRIBE21DAY_chevron_left_outlined_ICN');
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
              List<SystemDataRecord> columnSystemDataRecordList = snapshot.data;
              // Return an empty Container when the document does not exist.
              if (snapshot.data.isEmpty) {
                return Container();
              }
              final columnSystemDataRecord =
                  columnSystemDataRecordList.isNotEmpty
                      ? columnSystemDataRecordList.first
                      : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Text(
                      'Day Challenge',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Text(
                      columnSystemDataRecord.dayChallengeDesc,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'SUBSCRIBE21DAY_Container_5ijjz93j_ON_TAP');
                              logFirebaseEvent('Container_Backend-Call');

                              final challengeDay21CreateData =
                                  createChallengeDay21RecordData(
                                startDate: getCurrentTimestamp,
                                endDate21: functions.endDate21(),
                                endDate90: functions.endDate90(),
                                ninetyDays: false,
                                uid: currentUserUid,
                                list21: 21,
                                taskDone: false,
                                counter: 0,
                                isArchive: false,
                                dayChallengeID:
                                    '${currentUserUid}${dateTimeFormat('yMd', getCurrentTimestamp)}',
                              );
                              await ChallengeDay21Record.collection
                                  .doc()
                                  .set(challengeDay21CreateData);
                              logFirebaseEvent('Container_Custom-Action');
                              await actions.addtwentyonedays();
                              logFirebaseEvent('Container_Navigate-To');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: DayChallengeWidget(),
                                ),
                              );
                            },
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/34rbv_6.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'SUBSCRIBE21DAY_Container_nyc71tpe_ON_TAP');
                              logFirebaseEvent('Container_Backend-Call');

                              final challengeDay21CreateData =
                                  createChallengeDay21RecordData(
                                startDate: getCurrentTimestamp,
                                endDate21: functions.endDate21(),
                                endDate90: functions.endDate90(),
                                ninetyDays: true,
                                uid: currentUserUid,
                                list21: 90,
                                taskDone: false,
                                counter: 0,
                                isArchive: false,
                                dayChallengeID:
                                    '${currentUserUid}${dateTimeFormat('yMd', getCurrentTimestamp)}',
                              );
                              await ChallengeDay21Record.collection
                                  .doc()
                                  .set(challengeDay21CreateData);
                              logFirebaseEvent('Container_Custom-Action');
                              await actions.addninetyDays();
                              logFirebaseEvent('Container_Navigate-To');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: DayChallenge90Widget(),
                                ),
                              );
                            },
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/bfy6z_7.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
