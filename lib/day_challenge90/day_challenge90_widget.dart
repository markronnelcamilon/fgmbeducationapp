import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/day_challenge90_menu_widget.dart';
import '../components/day_challenge_list_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DayChallenge90Widget extends StatefulWidget {
  const DayChallenge90Widget({Key? key}) : super(key: key);

  @override
  _DayChallenge90WidgetState createState() => _DayChallenge90WidgetState();
}

class _DayChallenge90WidgetState extends State<DayChallenge90Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'dayChallenge90'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChallengeDay21Record>>(
      stream: queryChallengeDay21Record(
        queryBuilder: (challengeDay21Record) =>
            challengeDay21Record.where('uid', isEqualTo: currentUserUid),
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
        List<ChallengeDay21Record> dayChallenge90ChallengeDay21RecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final dayChallenge90ChallengeDay21Record =
            dayChallenge90ChallengeDay21RecordList.isNotEmpty
                ? dayChallenge90ChallengeDay21RecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                logFirebaseEvent('DAY_CHALLENGE90_Icon_d6i9pr44_ON_TAP');
                logFirebaseEvent('Icon_Navigate-To');
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: NavBarPage(initialPage: 'homePage'),
                  ),
                );
              },
              child: Icon(
                Icons.chevron_left_outlined,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
            ),
            title: Text(
              '90 Day Challenge',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.keyboard_control,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 30,
                ),
                onPressed: () async {
                  logFirebaseEvent('DAY_CHALLENGE90_keyboard_control_ICN_ON_');
                  logFirebaseEvent('IconButton_Bottom-Sheet');
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: DayChallenge90MenuWidget(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
            centerTitle: true,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: StreamBuilder<List<DayChallenge21Record>>(
                        stream: queryDayChallenge21Record(
                          queryBuilder: (dayChallenge21Record) =>
                              dayChallenge21Record
                                  .where('uid', isEqualTo: currentUserUid)
                                  .where('dayChallengeID',
                                      isEqualTo:
                                          dayChallenge90ChallengeDay21Record!
                                              .dayChallengeID)
                                  .orderBy('label'),
                          limit: 90,
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
                          List<DayChallenge21Record>
                              gridViewDayChallenge21RecordList = snapshot.data!;
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: gridViewDayChallenge21RecordList.length,
                            itemBuilder: (context, gridViewIndex) {
                              final gridViewDayChallenge21Record =
                                  gridViewDayChallenge21RecordList[
                                      gridViewIndex];
                              return InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'DAY_CHALLENGE90_Card_u8ciq6df_ON_TAP');
                                  if (gridViewDayChallenge21Record.completed ==
                                      true) {
                                    logFirebaseEvent('Card_Alert-Dialog');
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Task Already Completed'),
                                          content: Text(
                                              'The task is already completed you can proceed to next task.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    logFirebaseEvent('Card_Bottom-Sheet');
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
                                                0.8,
                                            child: DayChallengeListWidget(
                                              day: gridViewDayChallenge21Record
                                                  .day,
                                              date: gridViewDayChallenge21Record
                                                  .date,
                                              completed:
                                                  gridViewDayChallenge21Record
                                                      .completed,
                                              taskDoneList:
                                                  gridViewDayChallenge21Record
                                                      .dayChallengeFromRef,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          if (!gridViewDayChallenge21Record
                                              .completed!)
                                            Icon(
                                              Icons.lock_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 20,
                                            ),
                                          if (gridViewDayChallenge21Record
                                                  .completed ??
                                              true)
                                            Icon(
                                              Icons.check_box,
                                              color: Color(0xFF007E05),
                                              size: 20,
                                            ),
                                        ],
                                      ),
                                      Text(
                                        gridViewDayChallenge21Record.label!
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 8,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
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
