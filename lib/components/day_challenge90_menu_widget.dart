import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DayChallenge90MenuWidget extends StatefulWidget {
  const DayChallenge90MenuWidget({
    Key key,
    this.dayChallengeDocID,
  }) : super(key: key);

  final String dayChallengeDocID;

  @override
  _DayChallenge90MenuWidgetState createState() =>
      _DayChallenge90MenuWidgetState();
}

class _DayChallenge90MenuWidgetState extends State<DayChallenge90MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChallengeDay21Record>>(
      stream: queryChallengeDay21Record(
        queryBuilder: (challengeDay21Record) => challengeDay21Record
            .where('uid', isEqualTo: currentUserUid)
            .where('isArchive', isEqualTo: false),
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
        List<ChallengeDay21Record> containerChallengeDay21RecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final containerChallengeDay21Record =
            containerChallengeDay21RecordList.isNotEmpty
                ? containerChallengeDay21RecordList.first
                : null;
        return Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Color(0x3B1D2429),
                offset: Offset(0, -3),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  height: 30,
                  thickness: 3,
                  indent: 120,
                  endIndent: 120,
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'DAY_CHALLENGE90_MENU_ARCHIVE_BTN_ON_TAP');
                      if (containerChallengeDay21Record.taskDone) {
                        logFirebaseEvent('Button_Backend-Call');

                        final challengeDay21UpdateData =
                            createChallengeDay21RecordData(
                          isArchive: true,
                        );
                        await containerChallengeDay21Record.reference
                            .update(challengeDay21UpdateData);
                        logFirebaseEvent('Button_Show-Snack-Bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Successfully archived',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        );
                        logFirebaseEvent('Button_Navigate-To');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'homePage'),
                          ),
                        );
                      } else {
                        logFirebaseEvent('Button_Backend-Call');

                        final challengeDay21UpdateData =
                            createChallengeDay21RecordData(
                          isArchive: false,
                        );
                        await containerChallengeDay21Record.reference
                            .update(challengeDay21UpdateData);
                        logFirebaseEvent('Button_Show-Snack-Bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '90 Day Challenge is not yet done',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        );
                        logFirebaseEvent('Button_Navigate-Back');
                        Navigator.pop(context);
                      }
                    },
                    text: 'Archive',
                    icon: Icon(
                      Icons.archive,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
