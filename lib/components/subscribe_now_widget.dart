import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../subscribe21day/subscribe21day_widget.dart';
import '../subscribe_page/subscribe_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscribeNowWidget extends StatefulWidget {
  const SubscribeNowWidget({Key key}) : super(key: key);

  @override
  _SubscribeNowWidgetState createState() => _SubscribeNowWidgetState();
}

class _SubscribeNowWidgetState extends State<SubscribeNowWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        logFirebaseEvent('SUBSCRIBE_NOW_Container_xkq4rs37_ON_TAP');
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
        height: 200,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 15, 24, 0),
                child: Text(
                  'You are not yet subscribe to  Millionaires Success Habits and Daily Success Tools',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('SUBSCRIBE_NOW_SUBSCRIBE_NOW_BTN_ON_TAP');
                    logFirebaseEvent('Button_Navigate-To');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubscribePageWidget(),
                      ),
                    );
                  },
                  text: 'Subscribe Now',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
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
          ),
        ),
      ),
    );
  }
}
