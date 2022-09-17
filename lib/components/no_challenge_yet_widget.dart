import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../subscribe21day/subscribe21day_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NoChallengeYetWidget extends StatefulWidget {
  const NoChallengeYetWidget({Key? key}) : super(key: key);

  @override
  _NoChallengeYetWidgetState createState() => _NoChallengeYetWidgetState();
}

class _NoChallengeYetWidgetState extends State<NoChallengeYetWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        logFirebaseEvent('NO_CHALLENGE_YET_Container_yfk9sa7g_ON_T');
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
          color: FlutterFlowTheme.of(context).primaryBackground,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Text(
                  'You don\'t have a day challenge yet',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Text(
                  'Tap here to subscribe',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
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
