import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DayChallengeListWidget extends StatefulWidget {
  const DayChallengeListWidget({
    Key? key,
    this.day,
    this.date,
    this.taskDoneList,
    this.completed,
  }) : super(key: key);

  final String? day;
  final DateTime? date;
  final DocumentReference? taskDoneList;
  final bool? completed;

  @override
  _DayChallengeListWidgetState createState() => _DayChallengeListWidgetState();
}

class _DayChallengeListWidgetState extends State<DayChallengeListWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DayChallenge21Record>>(
      stream: queryDayChallenge21Record(
        queryBuilder: (dayChallenge21Record) => dayChallenge21Record
            .where('uid', isEqualTo: currentUserUid)
            .where('day', isEqualTo: widget.day),
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
        List<DayChallenge21Record> containerDayChallenge21RecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerDayChallenge21Record =
            containerDayChallenge21RecordList.isNotEmpty
                ? containerDayChallenge21RecordList.first
                : null;
        return Container(
          width: double.infinity,
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
            child: StreamBuilder<List<ChallengeDay21Record>>(
              stream: queryChallengeDay21Record(
                queryBuilder: (challengeDay21Record) => challengeDay21Record
                    .where('uid', isEqualTo: currentUserUid),
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
                List<ChallengeDay21Record> columnChallengeDay21RecordList =
                    snapshot.data!;
                // Return an empty Container when the document does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnChallengeDay21Record =
                    columnChallengeDay21RecordList.isNotEmpty
                        ? columnChallengeDay21RecordList.first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<List<Task21Record>>(
                      stream: queryTask21Record(
                        queryBuilder: (task21Record) => task21Record
                            .where('uid', isEqualTo: currentUserUid)
                            .where('day', isEqualTo: widget.day),
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 40,
                              ),
                            ),
                          );
                        }
                        List<Task21Record> columnTask21RecordList =
                            snapshot.data!;
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final columnTask21Record =
                            columnTask21RecordList.isNotEmpty
                                ? columnTask21RecordList.first
                                : null;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Divider(
                              height: 10,
                              thickness: 2,
                              indent: 120,
                              endIndent: 120,
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.day!,
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                  ),
                                  Text(
                                    dateTimeFormat('yMMMd', widget.date),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                              child: StreamBuilder<List<Task21Record>>(
                                stream: queryTask21Record(
                                  queryBuilder: (task21Record) => task21Record
                                      .where('day', isEqualTo: widget.day)
                                      .where('uid', isEqualTo: currentUserUid)
                                      .where('dayChallengeID',
                                          isEqualTo: columnTask21Record!
                                              .dayChallengeID)
                                      .orderBy('label'),
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
                                  List<Task21Record>
                                      taskColumnTask21RecordList =
                                      snapshot.data!;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        taskColumnTask21RecordList.length,
                                        (taskColumnIndex) {
                                      final taskColumnTask21Record =
                                          taskColumnTask21RecordList[
                                              taskColumnIndex];
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 8, 0),
                                            child: ToggleIcon(
                                              onPressed: () async {
                                                final task21UpdateData = {
                                                  'taskState':
                                                      !taskColumnTask21Record
                                                          .taskState!,
                                                };
                                                await taskColumnTask21Record
                                                    .reference
                                                    .update(task21UpdateData);
                                              },
                                              value: taskColumnTask21Record
                                                  .taskState!,
                                              onIcon: Icon(
                                                Icons.check_circle_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 25,
                                              ),
                                              offIcon: FaIcon(
                                                FontAwesomeIcons.circle,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                taskColumnTask21Record
                                                    .taskName!,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                              ),
                              child: Visibility(
                                visible: functions.showCompleteButton(
                                        columnTask21Record!.taskState,
                                        columnTask21Record!.taskState,
                                        columnTask21Record!.taskState,
                                        columnTask21Record!.taskState,
                                        columnTask21Record!.taskState,
                                        true) ==
                                    true,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'DAY_CHALLENGE_LIST_COMPLETE_TASK_BTN_ON_');
                                      if (widget.day == 'Day 21') {
                                        logFirebaseEvent('Button_Backend-Call');

                                        final challengeDay21UpdateData = {
                                          ...createChallengeDay21RecordData(
                                            taskDone: true,
                                          ),
                                          'counter': FieldValue.increment(1),
                                        };
                                        await columnChallengeDay21Record!
                                            .reference
                                            .update(challengeDay21UpdateData);
                                      } else {
                                        logFirebaseEvent('Button_Backend-Call');

                                        final challengeDay21UpdateData = {
                                          ...createChallengeDay21RecordData(
                                            taskDone: false,
                                          ),
                                          'counter': FieldValue.increment(1),
                                        };
                                        await columnChallengeDay21Record!
                                            .reference
                                            .update(challengeDay21UpdateData);
                                      }

                                      logFirebaseEvent('Button_Backend-Call');

                                      final dayChallenge21UpdateData =
                                          createDayChallenge21RecordData(
                                        completed: true,
                                      );
                                      await containerDayChallenge21Record!
                                          .reference
                                          .update(dayChallenge21UpdateData);
                                      logFirebaseEvent('Button_Navigate-Back');
                                      Navigator.pop(context);
                                    },
                                    text: 'Complete Task',
                                    icon: Icon(
                                      Icons.fact_check_sharp,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 60,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
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
                            ),
                          ],
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Notes',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Text(
                              'Make notes of any changes, insights or breakthroughs you achieve.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
