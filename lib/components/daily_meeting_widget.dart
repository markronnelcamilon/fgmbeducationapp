import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyMeetingWidget extends StatefulWidget {
  const DailyMeetingWidget({
    Key? key,
    this.dailySuccessPlannerRR,
  }) : super(key: key);

  final DocumentReference? dailySuccessPlannerRR;

  @override
  _DailyMeetingWidgetState createState() => _DailyMeetingWidgetState();
}

class _DailyMeetingWidgetState extends State<DailyMeetingWidget> {
  TextEditingController? meetingTFController;

  DateTime? datePicked;

  @override
  void initState() {
    super.initState();
    meetingTFController = TextEditingController();
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
                    'Daily Meeting',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                      child: Text(
                        'Time',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        dateTimeFormat('jm', datePicked),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                  ],
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.more_time,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('DAILY_MEETING_COMP_more_time_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_Date-Time-Picker');
                    await DatePicker.showTimePicker(
                      context,
                      showTitleActions: true,
                      onConfirm: (date) {
                        setState(() => datePicked = date);
                      },
                      currentTime: getCurrentTimestamp,
                      locale: LocaleType.values.firstWhere(
                        (l) =>
                            l.name == FFLocalizations.of(context).languageCode,
                        orElse: () => LocaleType.en,
                      ),
                    );
                  },
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: TextFormField(
                  controller: meetingTFController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'meetingTFController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Add meeting here',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    suffixIcon: meetingTFController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              meetingTFController?.clear();
                              setState(() {});
                            },
                            child: Icon(
                              Icons.clear,
                              color: FlutterFlowTheme.of(context).primaryText,
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
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 16, 8, 4),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('DAILY_MEETING_COMP_SAVE_BTN_ON_TAP');
                  logFirebaseEvent('Button_Backend-Call');

                  final meetingsCreateData = createMeetingsRecordData(
                    time: datePicked,
                    meetingDetails: meetingTFController!.text,
                  );
                  await MeetingsRecord.createDoc(widget.dailySuccessPlannerRR!)
                      .set(meetingsCreateData);
                  logFirebaseEvent('Button_Show-Snack-Bar');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Meeting successfully added',
                        style: TextStyle(),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: Color(0x00000000),
                    ),
                  );
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
                  logFirebaseEvent('DAILY_MEETING_COMP_CANCEL_BTN_ON_TAP');
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
