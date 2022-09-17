import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionAddPersonalWidget extends StatefulWidget {
  const TransactionAddPersonalWidget({
    Key? key,
    this.dailyFinancialPlanner,
    this.uid,
  }) : super(key: key);

  final DocumentReference? dailyFinancialPlanner;
  final String? uid;

  @override
  _TransactionAddPersonalWidgetState createState() =>
      _TransactionAddPersonalWidgetState();
}

class _TransactionAddPersonalWidgetState
    extends State<TransactionAddPersonalWidget> with TickerProviderStateMixin {
  TextEditingController? reasonController;

  TextEditingController? spentAtController;

  TextEditingController? textController1;

  String? needsOrWantsValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 230,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 120),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'transaction_add_personal'});
    reasonController = TextEditingController();
    spentAtController = TextEditingController();
    textController1 = TextEditingController();
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
            transactionAddPersonalDailyFinancialPlannerRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final transactionAddPersonalDailyFinancialPlannerRecord =
            transactionAddPersonalDailyFinancialPlannerRecordList.isNotEmpty
                ? transactionAddPersonalDailyFinancialPlannerRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                logFirebaseEvent('TRANSACTION_ADD_PERSONAL_Icon_tsww0pnl_O');
                logFirebaseEvent('Icon_Navigate-Back');
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 24,
              ),
            ),
            title: Text(
              'Personal Account',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).primaryColor,
                    fontSize: 20,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width,
                          ),
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: textController1,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Amount',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    24, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.attach_money_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 32,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 30,
                                  ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            ).animated([
                              animationsMap['textFieldOnPageLoadAnimation1']!
                            ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: TextFormField(
                            controller: spentAtController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText1,
                              hintText: 'Spent At',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 24, 24),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                          ).animated([
                            animationsMap['textFieldOnPageLoadAnimation2']!
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: TextFormField(
                            controller: reasonController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                              hintText: 'Description',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(20, 40, 24, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            textAlign: TextAlign.start,
                            maxLines: 4,
                          ).animated([
                            animationsMap['textFieldOnPageLoadAnimation3']!
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                          child: FlutterFlowDropDown(
                            options: ['Needs', 'Wants'],
                            onChanged: (val) =>
                                setState(() => needsOrWantsValue = val),
                            height: 50,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            hintText: 'Needs or Wants',
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 15,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderWidth: 1,
                            borderRadius: 10,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'TRANSACTION_ADD_PERSONAL_ADD_TRANSACTION');
                                if (needsOrWantsValue == 'Needs') {
                                  logFirebaseEvent('Button_Backend-Call');

                                  final dailyFinancialPlannerUpdateData = {
                                    ...createDailyFinancialPlannerRecordData(
                                      spendingNeeds:
                                          functions.addValueToSpendingNeeds(
                                              transactionAddPersonalDailyFinancialPlannerRecord!
                                                  .spendingNeeds,
                                              double.parse(
                                                  textController1!.text)),
                                    ),
                                    'no_of_needs': FieldValue.increment(1),
                                  };
                                  await transactionAddPersonalDailyFinancialPlannerRecord!
                                      .reference
                                      .update(dailyFinancialPlannerUpdateData);
                                } else {
                                  logFirebaseEvent('Button_Backend-Call');

                                  final dailyFinancialPlannerUpdateData = {
                                    ...createDailyFinancialPlannerRecordData(
                                      spendingWants:
                                          functions.addValueToSpendingNeeds(
                                              transactionAddPersonalDailyFinancialPlannerRecord!
                                                  .spendingWants,
                                              double.parse(
                                                  textController1!.text)),
                                    ),
                                    'no_of_wants': FieldValue.increment(1),
                                  };
                                  await transactionAddPersonalDailyFinancialPlannerRecord!
                                      .reference
                                      .update(dailyFinancialPlannerUpdateData);
                                }

                                logFirebaseEvent('Button_Backend-Call');

                                final dailyFinancialTransactionCreateData =
                                    createDailyFinancialTransactionRecordData(
                                  uid: currentUserUid,
                                  description: reasonController!.text,
                                  amount: double.parse(textController1!.text),
                                  wantsOrNeeds: needsOrWantsValue,
                                  date: getCurrentTimestamp,
                                  spendAt: spentAtController!.text,
                                  businessOrPersonal: 'Personal',
                                  isMoneyOut: true,
                                );
                                await DailyFinancialTransactionRecord.collection
                                    .doc()
                                    .set(dailyFinancialTransactionCreateData);
                                logFirebaseEvent('Button_Backend-Call');

                                final dailyFinancialPlannerUpdateData = {
                                  ...createDailyFinancialPlannerRecordData(
                                    totalSpending: functions.addToTotalSpeding(
                                        transactionAddPersonalDailyFinancialPlannerRecord!
                                            .totalSpending,
                                        double.parse(textController1!.text)),
                                    spendingPersonal: functions.addMoneyToTotal(
                                        double.parse(textController1!.text),
                                        transactionAddPersonalDailyFinancialPlannerRecord!
                                            .spendingPersonal),
                                  ),
                                  'total_transaction':
                                      FieldValue.increment(1.0),
                                };
                                await transactionAddPersonalDailyFinancialPlannerRecord!
                                    .reference
                                    .update(dailyFinancialPlannerUpdateData);
                                logFirebaseEvent('Button_Navigate-Back');
                                Navigator.pop(context);
                              },
                              text: 'Add Transaction',
                              options: FFButtonOptions(
                                width: 300,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .darkBackground,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ],
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
