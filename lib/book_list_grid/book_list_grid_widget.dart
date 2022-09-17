import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class BookListGridWidget extends StatefulWidget {
  const BookListGridWidget({Key? key}) : super(key: key);

  @override
  _BookListGridWidgetState createState() => _BookListGridWidgetState();
}

class _BookListGridWidgetState extends State<BookListGridWidget> {
  TextEditingController? textController;

  List<BookListRecord> simpleSearchResults = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'bookListGrid'});
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
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
            logFirebaseEvent('BOOK_LIST_GRID_chevron_left_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
          child: TextFormField(
            controller: textController,
            onChanged: (_) => EasyDebounce.debounce(
              'textController',
              Duration(milliseconds: 2000),
              () => setState(() {}),
            ),
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Search',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primaryText,
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primaryText,
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
              suffixIcon: textController!.text.isNotEmpty
                  ? InkWell(
                      onTap: () async {
                        textController?.clear();
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
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 45,
              icon: Icon(
                Icons.search,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('BOOK_LIST_GRID_PAGE_search_ICN_ON_TAP');
                logFirebaseEvent('IconButton_Simple-Search');
                await queryBookListRecordOnce()
                    .then(
                      (records) => simpleSearchResults = TextSearch(
                        records
                            .map(
                              (record) => TextSearchItem(record,
                                  [record.bookName!, record.bookAuthor!]),
                            )
                            .toList(),
                      )
                          .search(textController!.text)
                          .map((r) => r.object)
                          .toList(),
                    )
                    .onError((_, __) => simpleSearchResults = [])
                    .whenComplete(() => setState(() {}));
              },
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
        child: StreamBuilder<List<BookListRecord>>(
          stream: queryBookListRecord(
            queryBuilder: (bookListRecord) => bookListRecord.where('bookName',
                isEqualTo: simpleSearchResults.length.toString()),
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
            List<BookListRecord> listViewBookListRecordList = snapshot.data!;
            return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: listViewBookListRecordList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewBookListRecord =
                    listViewBookListRecordList[listViewIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('BOOK_LIST_GRID_PAGE_menuItem_ON_TAP');
                      logFirebaseEvent('menuItem_Launch-U-R-L');
                      await launchURL(listViewBookListRecord.amazonLink!);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x411D2429),
                          )
                        ],
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  listViewBookListRecord.bookImage!,
                                  width: 60,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listViewBookListRecord.bookName!,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 8, 0),
                                        child: AutoSizeText(
                                          listViewBookListRecord.bookAuthor!
                                              .maybeHandleOverflow(
                                            maxChars: 70,
                                            replacement: '…',
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
