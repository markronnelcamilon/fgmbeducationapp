import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/add_goal_with_date_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../goal_detail/goal_detail_widget.dart';
import '../goal_writing/goal_writing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalBookWidget extends StatefulWidget {
  const GoalBookWidget({Key? key}) : super(key: key);

  @override
  _GoalBookWidgetState createState() => _GoalBookWidgetState();
}

class _GoalBookWidgetState extends State<GoalBookWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'goalBook'});
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
            logFirebaseEvent('GOAL_BOOK_PAGE_chevron_left_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Goal Book',
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
              Icons.info_outlined,
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 24,
            ),
            onPressed: () async {
              logFirebaseEvent('GOAL_BOOK_PAGE_info_outlined_ICN_ON_TAP');
              logFirebaseEvent('IconButton_Navigate-To');
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GoalWritingWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          logFirebaseEvent('GOAL_BOOK_FloatingActionButton_ybsaeox9_');
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
                  child: AddGoalWithDateWidget(
                    userID: currentUserUid,
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        icon: Icon(
          Icons.add_box,
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        elevation: 8,
        label: Text(
          'Add Goal',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
        ),
      ),
      body: StreamBuilder<List<GoalListRecord>>(
        stream: queryGoalListRecord(
          queryBuilder: (goalListRecord) => goalListRecord
              .where('userID', isEqualTo: currentUserUid)
              .orderBy('date', descending: true),
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
          List<GoalListRecord> mainContainerGoalListRecordList = snapshot.data!;
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(mainContainerGoalListRecordList.length,
                (mainContainerIndex) {
              final mainContainerGoalListRecord =
                  mainContainerGoalListRecordList[mainContainerIndex];
              return InkWell(
                onTap: () async {
                  logFirebaseEvent('GOAL_BOOK_PAGE_ListTile_suvhj1v6_ON_TAP');
                  logFirebaseEvent('ListTile_Navigate-To');
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoalDetailWidget(
                        userID: currentUserUid,
                        date: mainContainerGoalListRecord.date,
                        goalID: mainContainerGoalListRecord.goalID,
                      ),
                    ),
                  );
                },
                child: Slidable(
                  actionPane: const SlidableScrollActionPane(),
                  secondaryActions: [
                    IconSlideAction(
                      caption: 'Delete',
                      color: Color(0xFFFF0000),
                      icon: Icons.delete_forever,
                      onTap: () async {
                        logFirebaseEvent(
                            'GOAL_BOOK_SlidableActionWidget_h78cietz_');
                        logFirebaseEvent('SlidableActionWidget_Backend-Call');
                        await mainContainerGoalListRecord.reference.delete();
                      },
                    ),
                  ],
                  child: ListTile(
                    title: Text(
                      dateTimeFormat(
                          'yMMMd', mainContainerGoalListRecord.date!),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                    subtitle: Text(
                      dateTimeFormat('EEEE', mainContainerGoalListRecord.date!),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                    trailing: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
