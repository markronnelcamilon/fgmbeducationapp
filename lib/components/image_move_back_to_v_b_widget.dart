import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageMoveBackToVBWidget extends StatefulWidget {
  const ImageMoveBackToVBWidget({
    Key? key,
    this.isAchievement,
    this.imageRR,
  }) : super(key: key);

  final bool? isAchievement;
  final DocumentReference? imageRR;

  @override
  _ImageMoveBackToVBWidgetState createState() =>
      _ImageMoveBackToVBWidgetState();
}

class _ImageMoveBackToVBWidgetState extends State<ImageMoveBackToVBWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Update Image',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Text(
                        'Move to achievement board or delete image',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'IMAGE_MOVE_BACK_TO_V_B_MOVE_TO_VISION_BO');
                      logFirebaseEvent('Button_Backend-Call');

                      final visionBoardUpdateData = createVisionBoardRecordData(
                        isAchievement: false,
                      );
                      await widget.imageRR!.update(visionBoardUpdateData);
                      logFirebaseEvent('Button_Navigate-Back');
                      Navigator.pop(context);
                    },
                    text: 'Move to Vision Board',
                    icon: Icon(
                      Icons.move_to_inbox,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 150,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'IMAGE_MOVE_BACK_TO_V_B_DELETE_IMAGE_BTN_');
                        logFirebaseEvent('Button_Backend-Call');
                        await widget.imageRR!.delete();
                        logFirebaseEvent('Button_Navigate-Back');
                        Navigator.pop(context);
                      },
                      text: 'Delete Image',
                      icon: Icon(
                        Icons.delete_forever,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText2
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
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
  }
}
