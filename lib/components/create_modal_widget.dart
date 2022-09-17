import '../create_post/create_post_widget.dart';
import '../create_story/create_story_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateModalWidget extends StatefulWidget {
  const CreateModalWidget({Key? key}) : super(key: key);

  @override
  _CreateModalWidgetState createState() => _CreateModalWidgetState();
}

class _CreateModalWidgetState extends State<CreateModalWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
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
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('CREATE_MODAL_Container_it333f3n_ON_TAP');
                  logFirebaseEvent('Container_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: CreateStoryWidget(),
                    ),
                  );
                  logFirebaseEvent('Container_Navigate-Back');
                  Navigator.pop(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 80,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        color: FlutterFlowTheme.of(context).darkBackground,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Story',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                        Text(
                          'Share Image of Your Success',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('CREATE_MODAL_Container_rhqwri9y_ON_TAP');
                  logFirebaseEvent('Container_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: CreatePostWidget(),
                    ),
                  );
                  logFirebaseEvent('Container_Navigate-Back');
                  Navigator.pop(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 80,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        color: FlutterFlowTheme.of(context).darkBackground,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Post',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                        Text(
                          'Share Your Success on Your Timeline',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
