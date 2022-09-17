import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../subscribe21day/subscribe21day_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NoFinancialPlannerWidget extends StatefulWidget {
  const NoFinancialPlannerWidget({Key? key}) : super(key: key);

  @override
  _NoFinancialPlannerWidgetState createState() =>
      _NoFinancialPlannerWidgetState();
}

class _NoFinancialPlannerWidgetState extends State<NoFinancialPlannerWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        logFirebaseEvent('NO_FINANCIAL_PLANNER_Container_vv21eyw5_');
        logFirebaseEvent('Container_Navigate-To');
        await Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 300),
            reverseDuration: Duration(milliseconds: 300),
            child: Subscribe21dayWidget(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 240,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Color(0x3B1D2429),
              offset: Offset(0, -3),
            )
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Text(
                  'Subscribe to Daily Financial Planner',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Lexend Deca',
                        fontSize: 14,
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
