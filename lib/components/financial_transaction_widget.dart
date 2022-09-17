import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FinancialTransactionWidget extends StatefulWidget {
  const FinancialTransactionWidget({Key? key}) : super(key: key);

  @override
  _FinancialTransactionWidgetState createState() =>
      _FinancialTransactionWidgetState();
}

class _FinancialTransactionWidgetState
    extends State<FinancialTransactionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        color: Color(0xFF262D34),
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
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).background,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: FlutterFlowTheme.of(context).darkBackground,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 10, 10),
                      child: Icon(
                        Icons.attach_money_rounded,
                        color: FlutterFlowTheme.of(context).textColor,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Add Weekly Allocation',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).background,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: FlutterFlowTheme.of(context).darkBackground,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 10, 10),
                      child: Icon(
                        Icons.attach_money_rounded,
                        color: FlutterFlowTheme.of(context).textColor,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Add Transaction',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
