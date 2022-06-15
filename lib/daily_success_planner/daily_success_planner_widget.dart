import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../daily_success_planner_detail/daily_success_planner_detail_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DailySuccessPlannerWidget extends StatefulWidget {
  const DailySuccessPlannerWidget({Key key}) : super(key: key);

  @override
  _DailySuccessPlannerWidgetState createState() =>
      _DailySuccessPlannerWidgetState();
}

class _DailySuccessPlannerWidgetState extends State<DailySuccessPlannerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'dailySuccessPlanner'});
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
            logFirebaseEvent('DAILY_SUCCESS_PLANNER_chevron_left_ICN_O');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Daily Success Planner',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 10, 4, 10),
                  child: StreamBuilder<List<DailySuccessPlannerRecord>>(
                    stream: queryDailySuccessPlannerRecord(
                      queryBuilder: (dailySuccessPlannerRecord) =>
                          dailySuccessPlannerRecord
                              .where('uid', isEqualTo: currentUserUid)
                              .orderBy('date')
                              .orderBy('did_win_the_day'),
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
                      List<DailySuccessPlannerRecord>
                          gridViewDailySuccessPlannerRecordList = snapshot.data;
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          childAspectRatio: 1,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: gridViewDailySuccessPlannerRecordList.length,
                        itemBuilder: (context, gridViewIndex) {
                          final gridViewDailySuccessPlannerRecord =
                              gridViewDailySuccessPlannerRecordList[
                                  gridViewIndex];
                          return InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'DAILY_SUCCESS_PLANNER_Card_yh150jbs_ON_T');
                              logFirebaseEvent('Card_Navigate-To');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DailySuccessPlannerDetailWidget(
                                    dailySuccessPlannerRR:
                                        gridViewDailySuccessPlannerRecord
                                            .reference,
                                  ),
                                ),
                              );
                            },
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (gridViewDailySuccessPlannerRecord
                                          .didWinTheDay ??
                                      true)
                                    FaIcon(
                                      FontAwesomeIcons.award,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 30,
                                    ),
                                  Text(
                                    dateTimeFormat('yMMMd',
                                        gridViewDailySuccessPlannerRecord.date),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
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
  }
}
