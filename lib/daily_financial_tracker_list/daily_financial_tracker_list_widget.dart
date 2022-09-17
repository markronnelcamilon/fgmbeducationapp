import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../calculator/calculator_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyFinancialTrackerListWidget extends StatefulWidget {
  const DailyFinancialTrackerListWidget({Key? key}) : super(key: key);

  @override
  _DailyFinancialTrackerListWidgetState createState() =>
      _DailyFinancialTrackerListWidgetState();
}

class _DailyFinancialTrackerListWidgetState
    extends State<DailyFinancialTrackerListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'dailyFinancialTrackerList'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DailyFinancialPlannerRecord>>(
      stream: queryDailyFinancialPlannerRecord(
        queryBuilder: (dailyFinancialPlannerRecord) =>
            dailyFinancialPlannerRecord.where('uid', isEqualTo: currentUserUid),
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
        List<DailyFinancialPlannerRecord>
            dailyFinancialTrackerListDailyFinancialPlannerRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final dailyFinancialTrackerListDailyFinancialPlannerRecord =
            dailyFinancialTrackerListDailyFinancialPlannerRecordList.isNotEmpty
                ? dailyFinancialTrackerListDailyFinancialPlannerRecordList.first
                : null;
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
                logFirebaseEvent('DAILY_FINANCIAL_TRACKER_LIST_chevron_lef');
                logFirebaseEvent('IconButton_Navigate-Back');
                Navigator.pop(context);
              },
            ),
            title: Text(
              'All Transactions',
              style: FlutterFlowTheme.of(context).title3,
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.calculate_outlined,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 30,
                ),
                onPressed: () async {
                  logFirebaseEvent('DAILY_FINANCIAL_TRACKER_LIST_calculate_o');
                  logFirebaseEvent('IconButton_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: CalculatorWidget(),
                    ),
                  );
                },
              ),
            ],
            centerTitle: true,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    labelColor: FlutterFlowTheme.of(context).primaryColor,
                    labelStyle: FlutterFlowTheme.of(context).bodyText1,
                    indicatorColor: FlutterFlowTheme.of(context).primaryColor,
                    tabs: [
                      Tab(
                        text: 'All',
                      ),
                      Tab(
                        text: 'Business',
                      ),
                      Tab(
                        text: 'Personal',
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        StreamBuilder<List<DailyFinancialTransactionRecord>>(
                          stream: queryDailyFinancialTransactionRecord(
                            queryBuilder: (dailyFinancialTransactionRecord) =>
                                dailyFinancialTransactionRecord
                                    .where('uid', isEqualTo: currentUserUid)
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
                            List<DailyFinancialTransactionRecord>
                                columnDailyFinancialTransactionRecordList =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnDailyFinancialTransactionRecordList
                                      .length, (columnIndex) {
                                final columnDailyFinancialTransactionRecord =
                                    columnDailyFinancialTransactionRecordList[
                                        columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 4),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Stack(
                                          children: [
                                            if (columnDailyFinancialTransactionRecord
                                                    .isMoneyOut ==
                                                false)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.moneyBill,
                                                  color: Color(0xFF0D6600),
                                                  size: 24,
                                                ),
                                              ),
                                            if (columnDailyFinancialTransactionRecord
                                                    .isMoneyOut ==
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.moneyBill,
                                                  color: Color(0xFF8F0000),
                                                  size: 24,
                                                ),
                                              ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  columnDailyFinancialTransactionRecord
                                                      .spendAt!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14,
                                                      ),
                                                ),
                                                Text(
                                                  columnDailyFinancialTransactionRecord
                                                      .description!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                formatNumber(
                                                  columnDailyFinancialTransactionRecord
                                                      .amount!,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                  currency: '\$',
                                                ),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'yMMMd',
                                                      columnDailyFinancialTransactionRecord
                                                          .date!),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                        StreamBuilder<List<DailyFinancialTransactionRecord>>(
                          stream: queryDailyFinancialTransactionRecord(
                            queryBuilder: (dailyFinancialTransactionRecord) =>
                                dailyFinancialTransactionRecord
                                    .where('uid', isEqualTo: currentUserUid)
                                    .where('business_or_personal',
                                        isEqualTo: 'Business')
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
                            List<DailyFinancialTransactionRecord>
                                columnDailyFinancialTransactionRecordList =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnDailyFinancialTransactionRecordList
                                      .length, (columnIndex) {
                                final columnDailyFinancialTransactionRecord =
                                    columnDailyFinancialTransactionRecordList[
                                        columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 4),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Stack(
                                          children: [
                                            if (columnDailyFinancialTransactionRecord
                                                    .isMoneyOut ==
                                                false)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.moneyBill,
                                                  color: Color(0xFF0D6600),
                                                  size: 24,
                                                ),
                                              ),
                                            if (columnDailyFinancialTransactionRecord
                                                    .isMoneyOut ==
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.moneyBill,
                                                  color: Color(0xFF8F0000),
                                                  size: 24,
                                                ),
                                              ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  columnDailyFinancialTransactionRecord
                                                      .spendAt!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14,
                                                      ),
                                                ),
                                                Text(
                                                  columnDailyFinancialTransactionRecord
                                                      .description!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                formatNumber(
                                                  columnDailyFinancialTransactionRecord
                                                      .amount!,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                  currency: '\$',
                                                ),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'yMMMd',
                                                      columnDailyFinancialTransactionRecord
                                                          .date!),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                        StreamBuilder<List<DailyFinancialTransactionRecord>>(
                          stream: queryDailyFinancialTransactionRecord(
                            queryBuilder: (dailyFinancialTransactionRecord) =>
                                dailyFinancialTransactionRecord
                                    .where('uid', isEqualTo: currentUserUid)
                                    .where('business_or_personal',
                                        isEqualTo: 'Personal')
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
                            List<DailyFinancialTransactionRecord>
                                columnDailyFinancialTransactionRecordList =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnDailyFinancialTransactionRecordList
                                      .length, (columnIndex) {
                                final columnDailyFinancialTransactionRecord =
                                    columnDailyFinancialTransactionRecordList[
                                        columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 4),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Stack(
                                          children: [
                                            if (columnDailyFinancialTransactionRecord
                                                    .isMoneyOut ==
                                                false)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.moneyBill,
                                                  color: Color(0xFF0D6600),
                                                  size: 24,
                                                ),
                                              ),
                                            if (columnDailyFinancialTransactionRecord
                                                    .isMoneyOut ==
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.moneyBill,
                                                  color: Color(0xFF8F0000),
                                                  size: 24,
                                                ),
                                              ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  columnDailyFinancialTransactionRecord
                                                      .spendAt!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14,
                                                      ),
                                                ),
                                                Text(
                                                  columnDailyFinancialTransactionRecord
                                                      .description!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                formatNumber(
                                                  columnDailyFinancialTransactionRecord
                                                      .amount!,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                  currency: '\$',
                                                ),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'yMMMd',
                                                      columnDailyFinancialTransactionRecord
                                                          .date!),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ],
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
