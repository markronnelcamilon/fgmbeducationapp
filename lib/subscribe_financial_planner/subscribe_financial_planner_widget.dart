import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../daily_financial_tracker/daily_financial_tracker_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscribeFinancialPlannerWidget extends StatefulWidget {
  const SubscribeFinancialPlannerWidget({Key key}) : super(key: key);

  @override
  _SubscribeFinancialPlannerWidgetState createState() =>
      _SubscribeFinancialPlannerWidgetState();
}

class _SubscribeFinancialPlannerWidgetState
    extends State<SubscribeFinancialPlannerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'subscribeFinancialPlanner'});
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
            logFirebaseEvent('SUBSCRIBE_FINANCIAL_PLANNER_chevron_left');
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Image.asset(
                      'assets/images/ml88i_4.png',
                      width: 150,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Text(
                      'Financial Planner',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Text(
                      columnSystemDataRecord.financialPlannerDesc,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'SUBSCRIBE_FINANCIAL_PLANNER_SUBSCRIBE_BT');
                        logFirebaseEvent('Button_Backend-Call');

                        final dailyFinancialPlannerCreateData =
                            createDailyFinancialPlannerRecordData(
                          uid: currentUserUid,
                          startingBalance: 0.0,
                          totalSpending: 0.0,
                          totalTransaction: 0.0,
                          noOfWants: 0,
                          noOfNeeds: 0,
                          spendingWants: 0.0,
                          spendingNeeds: 0.0,
                          endOfDayBalance: 0.0,
                          subscriptionId: random_data.randomString(
                            1,
                            10,
                            true,
                            false,
                            false,
                          ),
                        );
                        await DailyFinancialPlannerRecord.collection
                            .doc()
                            .set(dailyFinancialPlannerCreateData);
                        logFirebaseEvent('Button_Backend-Call');

                        final subscriptionsCreateData =
                            createSubscriptionsRecordData(
                          uid: '${currentUserUid}FinancialPlanner',
                          subscriptionName: 'Goal Book',
                          dateSubscribed: getCurrentTimestamp,
                        );
                        await SubscriptionsRecord.collection
                            .doc()
                            .set(subscriptionsCreateData);
                        logFirebaseEvent('Button_Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: DailyFinancialTrackerWidget(),
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'SUBSCRIBE_FINANCIAL_PLANNER_GO_TO_DAILY_');
                        logFirebaseEvent('Button_Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.scale,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: DailyFinancialTrackerWidget(),
                          ),
                        );
                      },
                      text: 'Go to Daily Financial Planner',
                      options: FFButtonOptions(
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
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
              );
            },
          ),
        ),
      ),
    );
  }
}
