import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class QuarterlyGoalWidget extends StatefulWidget {
  const QuarterlyGoalWidget({
    Key? key,
    this.quarterlyGoalRR,
  }) : super(key: key);

  final DailySuccessPlannerRecord? quarterlyGoalRR;

  @override
  _QuarterlyGoalWidgetState createState() => _QuarterlyGoalWidgetState();
}

class _QuarterlyGoalWidgetState extends State<QuarterlyGoalWidget> {
  TextEditingController? quarterlyGoalTFController;

  @override
  void initState() {
    super.initState();
    quarterlyGoalTFController =
        TextEditingController(text: widget.quarterlyGoalRR!.quarterlyGoal);
  }

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Divider(
              height: 10,
              thickness: 3,
              indent: 120,
              endIndent: 120,
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Quarterly Goal',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
              child: TextFormField(
                controller: quarterlyGoalTFController,
                onChanged: (_) => EasyDebounce.debounce(
                  'quarterlyGoalTFController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Name',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  suffixIcon: quarterlyGoalTFController!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            quarterlyGoalTFController?.clear();
                            setState(() {});
                          },
                          child: Icon(
                            Icons.clear,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 16, 8, 4),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('QUARTERLY_GOAL_COMP_SAVE_BTN_ON_TAP');
                  logFirebaseEvent('Button_Backend-Call');

                  final dailySuccessPlannerUpdateData =
                      createDailySuccessPlannerRecordData(
                    quarterlyGoal: quarterlyGoalTFController!.text,
                  );
                  await widget.quarterlyGoalRR!.reference
                      .update(dailySuccessPlannerUpdateData);
                  logFirebaseEvent('Button_Navigate-Back');
                  Navigator.pop(context);
                },
                text: 'Save',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('QUARTERLY_GOAL_COMP_CANCEL_BTN_ON_TAP');
                  logFirebaseEvent('Button_Navigate-Back');
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
