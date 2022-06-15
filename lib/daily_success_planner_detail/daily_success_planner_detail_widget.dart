import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/daily_affiramation_b_s_widget.dart';
import '../components/daily_meeting_widget.dart';
import '../components/greateful_for_widget.dart';
import '../components/thank_god_for_copy_widget.dart';
import '../edit_daily_success_planner/edit_daily_success_planner_widget.dart';
import '../edit_quarterly_goals/edit_quarterly_goals_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DailySuccessPlannerDetailWidget extends StatefulWidget {
  const DailySuccessPlannerDetailWidget({
    Key key,
    this.dailySuccessPlannerRR,
  }) : super(key: key);

  final DocumentReference dailySuccessPlannerRR;

  @override
  _DailySuccessPlannerDetailWidgetState createState() =>
      _DailySuccessPlannerDetailWidgetState();
}

class _DailySuccessPlannerDetailWidgetState
    extends State<DailySuccessPlannerDetailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'dailySuccessPlannerDetail'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DailySuccessPlannerRecord>(
      stream:
          DailySuccessPlannerRecord.getDocument(widget.dailySuccessPlannerRR),
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
        final dailySuccessPlannerDetailDailySuccessPlannerRecord =
            snapshot.data;
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
                Icons.close,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 24,
              ),
              onPressed: () async {
                logFirebaseEvent('DAILY_SUCCESS_PLANNER_DETAIL_close_ICN_O');
                logFirebaseEvent('IconButton_Navigate-Back');
                Navigator.pop(context);
              },
            ),
            title: Text(
              dateTimeFormat('yMMMd',
                  dailySuccessPlannerDetailDailySuccessPlannerRecord.date),
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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ToggleIcon(
                                      onPressed: () async {
                                        final dailySuccessPlannerUpdateData =
                                            createDailySuccessPlannerRecordData(
                                          writeDownGoals:
                                              !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                  .writeDownGoals,
                                        );
                                        await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                            .reference
                                            .update(
                                                dailySuccessPlannerUpdateData);
                                      },
                                      value:
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .writeDownGoals,
                                      onIcon: Icon(
                                        Icons.check_box,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 25,
                                      ),
                                      offIcon: Icon(
                                        Icons.check_box_outline_blank,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 25,
                                      ),
                                    ),
                                    Text(
                                      'Do you write down your goals?',
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ToggleIcon(
                                      onPressed: () async {
                                        final dailySuccessPlannerUpdateData =
                                            createDailySuccessPlannerRecordData(
                                          readTenPages:
                                              !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                  .readTenPages,
                                        );
                                        await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                            .reference
                                            .update(
                                                dailySuccessPlannerUpdateData);
                                      },
                                      value:
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .readTenPages,
                                      onIcon: Icon(
                                        Icons.check_box,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 25,
                                      ),
                                      offIcon: Icon(
                                        Icons.check_box_outline_blank,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 25,
                                      ),
                                    ),
                                    Text(
                                      'Did ou read 10 pages of a book today?',
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'DAILY_SUCCESS_PLANNER_DETAIL_greatfulFor');
                            logFirebaseEvent('greatfulFor_Bottom-Sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: GreatefulForWidget(
                                      gratefulRR:
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 8, 8),
                                          child: Text(
                                            'Grateful for',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.handHoldingHeart,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 8, 0),
                                    child: Text(
                                      dailySuccessPlannerDetailDailySuccessPlannerRecord
                                          .greatfulFor,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 8, 8),
                                        child: Text(
                                          'Quarterly Goals',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 24,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: Icon(
                                          Icons.edit,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'DAILY_SUCCESS_PLANNER_DETAIL_edit_ICN_ON');
                                          logFirebaseEvent(
                                              'IconButton_Navigate-To');
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditQuarterlyGoalsWidget(),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                StreamBuilder<List<QuarterlyGoalsRecord>>(
                                  stream: queryQuarterlyGoalsRecord(
                                    queryBuilder: (quarterlyGoalsRecord) =>
                                        quarterlyGoalsRecord
                                            .where('uid',
                                                isEqualTo: currentUserUid)
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
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 40,
                                          ),
                                        ),
                                      );
                                    }
                                    List<QuarterlyGoalsRecord>
                                        columnQuarterlyGoalsRecordList =
                                        snapshot.data;
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                          columnQuarterlyGoalsRecordList.length,
                                          (columnIndex) {
                                        final columnQuarterlyGoalsRecord =
                                            columnQuarterlyGoalsRecordList[
                                                columnIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                columnQuarterlyGoalsRecord
                                                    .label,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 8),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    columnQuarterlyGoalsRecord
                                                        .goals,
                                                    'No quarterly goal yet',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'DAILY_SUCCESS_PLANNER_DETAIL_meetings_ON');
                            logFirebaseEvent('meetings_Navigate-To');
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditQuarterlyGoalsWidget(),
                              ),
                            );
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 8, 8),
                                          child: Text(
                                            'Meetings',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 24,
                                          borderWidth: 1,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.add_box,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'DAILY_SUCCESS_PLANNER_DETAIL_add_box_ICN');
                                            logFirebaseEvent(
                                                'IconButton_Bottom-Sheet');
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.5,
                                                    child: DailyMeetingWidget(
                                                      date:
                                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                              .date,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 8, 0),
                                    child: StreamBuilder<List<MeetingsRecord>>(
                                      stream: queryMeetingsRecord(
                                        queryBuilder: (meetingsRecord) =>
                                            meetingsRecord
                                                .where('userId',
                                                    isEqualTo: currentUserUid)
                                                .where('date',
                                                    isEqualTo:
                                                        dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                            .date)
                                                .orderBy('dateTime'),
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
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 40,
                                              ),
                                            ),
                                          );
                                        }
                                        List<MeetingsRecord>
                                            columnMeetingsRecordList =
                                            snapshot.data;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List.generate(
                                              columnMeetingsRecordList.length,
                                              (columnIndex) {
                                            final columnMeetingsRecord =
                                                columnMeetingsRecordList[
                                                    columnIndex];
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  dateTimeFormat(
                                                      'Hm',
                                                      columnMeetingsRecord
                                                          .dateTime),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Text(
                                                      columnMeetingsRecord
                                                          .meetingDetails,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'DAILY_SUCCESS_PLANNER_DETAIL_targets_ON_');
                            logFirebaseEvent('targets_Navigate-To');
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditDailySuccessPlannerWidget(
                                  dailySuccessPlannerDateRR:
                                      dailySuccessPlannerDetailDailySuccessPlannerRecord
                                          .reference,
                                ),
                              ),
                            );
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 8, 8, 8),
                                    child: Text(
                                      'TARGETS: Targets are designed to get you closer to achieving  your goals',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ToggleIcon(
                                        onPressed: () async {
                                          final dailySuccessPlannerUpdateData =
                                              createDailySuccessPlannerRecordData(
                                            task01:
                                                !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                    .task01,
                                          );
                                          await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .reference
                                              .update(
                                                  dailySuccessPlannerUpdateData);
                                        },
                                        value:
                                            dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                .task01,
                                        onIcon: Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                        offIcon: Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .targetDetail01,
                                          'Add target here.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ToggleIcon(
                                        onPressed: () async {
                                          final dailySuccessPlannerUpdateData =
                                              createDailySuccessPlannerRecordData(
                                            task02:
                                                !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                    .task02,
                                          );
                                          await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .reference
                                              .update(
                                                  dailySuccessPlannerUpdateData);
                                        },
                                        value:
                                            dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                .task02,
                                        onIcon: Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                        offIcon: Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .targetDetail02,
                                          'Add target here.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ToggleIcon(
                                        onPressed: () async {
                                          final dailySuccessPlannerUpdateData =
                                              createDailySuccessPlannerRecordData(
                                            task03:
                                                !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                    .task03,
                                          );
                                          await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .reference
                                              .update(
                                                  dailySuccessPlannerUpdateData);
                                        },
                                        value:
                                            dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                .task03,
                                        onIcon: Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                        offIcon: Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .targetDetail03,
                                          'Add target here.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ToggleIcon(
                                        onPressed: () async {
                                          final dailySuccessPlannerUpdateData =
                                              createDailySuccessPlannerRecordData(
                                            task04:
                                                !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                    .task04,
                                          );
                                          await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .reference
                                              .update(
                                                  dailySuccessPlannerUpdateData);
                                        },
                                        value:
                                            dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                .task04,
                                        onIcon: Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                        offIcon: Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .targetDetail04,
                                          'Add target here.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ToggleIcon(
                                        onPressed: () async {
                                          final dailySuccessPlannerUpdateData =
                                              createDailySuccessPlannerRecordData(
                                            task05:
                                                !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                    .task05,
                                          );
                                          await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .reference
                                              .update(
                                                  dailySuccessPlannerUpdateData);
                                        },
                                        value:
                                            dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                .task05,
                                        onIcon: Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                        offIcon: Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .targetDetail05,
                                          'Add target here.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'DAILY_SUCCESS_PLANNER_DETAIL_Card_3osshp');
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
                                              0.45,
                                          child: ThankGodForCopyWidget(
                                            thankedGodForRR:
                                                dailySuccessPlannerDetailDailySuccessPlannerRecord,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 4),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 4, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.prayingHands,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 18,
                                                ),
                                              ),
                                              Text(
                                                'I Thank God For',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .iThanGodFor,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'DAILY_SUCCESS_PLANNER_DETAIL_Card_0g9db7');
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
                                              0.45,
                                          child: DailyAffiramationBSWidget(
                                            dailyAffirmationRR:
                                                dailySuccessPlannerDetailDailySuccessPlannerRecord,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 4),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 4, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.crown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 18,
                                                ),
                                              ),
                                              Text(
                                                'Daily Affirmation',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .dailyAffirmatin,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 10),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'DID YOU WIN THE DAY?',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14,
                                            ),
                                      ),
                                      Text(
                                        'Answer yes if you',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            '1. Write down your goal',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12,
                                                ),
                                          ),
                                          Text(
                                            '2. Rewored your quarterly goal',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12,
                                                ),
                                          ),
                                          Text(
                                            '3. Completed all your target',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ToggleIcon(
                                        onPressed: () async {
                                          final dailySuccessPlannerUpdateData =
                                              createDailySuccessPlannerRecordData(
                                            didWinTheDay:
                                                !dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                    .didWinTheDay,
                                          );
                                          await dailySuccessPlannerDetailDailySuccessPlannerRecord
                                              .reference
                                              .update(
                                                  dailySuccessPlannerUpdateData);
                                        },
                                        value:
                                            dailySuccessPlannerDetailDailySuccessPlannerRecord
                                                .didWinTheDay,
                                        onIcon: Icon(
                                          Icons.check_circle,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25,
                                        ),
                                        offIcon: FaIcon(
                                          FontAwesomeIcons.circle,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
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
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 8, 8),
                                        child: Text(
                                          'Daily Time Record',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 24,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: Icon(
                                          Icons.edit,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'DAILY_SUCCESS_PLANNER_DETAIL_edit_ICN_ON');
                                          logFirebaseEvent(
                                              'IconButton_Navigate-To');
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditQuarterlyGoalsWidget(),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child:
                                      StreamBuilder<List<QuarterlyGoalsRecord>>(
                                    stream: queryQuarterlyGoalsRecord(
                                      queryBuilder: (quarterlyGoalsRecord) =>
                                          quarterlyGoalsRecord
                                              .where('uid',
                                                  isEqualTo: currentUserUid)
                                              .orderBy('date',
                                                  descending: true),
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
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 40,
                                            ),
                                          ),
                                        );
                                      }
                                      List<QuarterlyGoalsRecord>
                                          columnQuarterlyGoalsRecordList =
                                          snapshot.data;
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: List.generate(
                                            columnQuarterlyGoalsRecordList
                                                .length, (columnIndex) {
                                          final columnQuarterlyGoalsRecord =
                                              columnQuarterlyGoalsRecordList[
                                                  columnIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 2),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Text(
                                                    'Time',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  'Details',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
