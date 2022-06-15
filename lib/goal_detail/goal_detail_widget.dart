import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_goal_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalDetailWidget extends StatefulWidget {
  const GoalDetailWidget({
    Key key,
    this.userID,
    this.goalID,
    this.date,
  }) : super(key: key);

  final String userID;
  final String goalID;
  final DateTime date;

  @override
  _GoalDetailWidgetState createState() => _GoalDetailWidgetState();
}

class _GoalDetailWidgetState extends State<GoalDetailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'goalDetail'});
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
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('GOAL_DETAIL_PAGE_chevron_left_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        title: Text(
          dateTimeFormat('yMMMd', widget.date),
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          logFirebaseEvent('GOAL_DETAIL_FloatingActionButton_t2nwgl8');
          logFirebaseEvent('FloatingActionButton_Bottom-Sheet');
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: AddGoalWidget(
                    userID: currentUserUid,
                    goalID: widget.goalID,
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 24,
        ),
      ),
      body: StreamBuilder<List<GoalsRecord>>(
        stream: queryGoalsRecord(
          queryBuilder: (goalsRecord) => goalsRecord
              .where('goalID', isEqualTo: widget.goalID)
              .where('userID', isEqualTo: currentUserUid)
              .orderBy('date'),
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
          List<GoalsRecord> mainContainerGoalsRecordList = snapshot.data;
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(mainContainerGoalsRecordList.length,
                  (mainContainerIndex) {
                final mainContainerGoalsRecord =
                    mainContainerGoalsRecordList[mainContainerIndex];
                return Slidable(
                  actionPane: const SlidableScrollActionPane(),
                  secondaryActions: [
                    IconSlideAction(
                      caption: 'Delete',
                      color: Color(0xFFFF0000),
                      icon: Icons.delete_forever,
                      onTap: () async {
                        logFirebaseEvent(
                            'GOAL_DETAIL_SlidableActionWidget_syutblp');
                        logFirebaseEvent('SlidableActionWidget_Backend-Call');
                        await mainContainerGoalsRecord.reference.delete();
                      },
                    ),
                  ],
                  child: ListTile(
                    title: Text(
                      mainContainerGoalsRecord.goalDetails,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                    subtitle: Text(
                      dateTimeFormat('yMMMd', mainContainerGoalsRecord.date),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 12,
                          ),
                    ),
                    tileColor: Color(0x00F5F5F5),
                    dense: false,
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
