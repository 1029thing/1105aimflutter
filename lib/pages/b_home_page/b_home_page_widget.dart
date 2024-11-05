import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'b_home_page_model.dart';
export 'b_home_page_model.dart';

class BHomePageWidget extends StatefulWidget {
  const BHomePageWidget({super.key});

  @override
  State<BHomePageWidget> createState() => _BHomePageWidgetState();
}

class _BHomePageWidgetState extends State<BHomePageWidget> {
  late BHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BHomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 1000),
        callback: (timer) async {
          FFAppState().currentTime = getCurrentTimestamp;
          safeSetState(() {});
        },
        startImmediately: true,
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final chartPieChartColorsList1 = [
      const Color(0xFFE9CC46),
      const Color(0xFF28CB61),
      const Color(0xFF9B9289),
      const Color(0xFFD76ED4),
      const Color(0xFFAD19BC)
    ];
    final chartPieChartColorsList2 = [
      const Color(0xFFE9CC46),
      const Color(0xFF28CB61),
      const Color(0xFF9B9289),
      const Color(0xFFD76ED4),
      const Color(0xFFAD19BC)
    ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: SizedBox(
          width: 210.0,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              width: 0.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Text(
                              'AIM',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 50.0,
                                    letterSpacing: 5.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Container(
                          width: 120.0,
                          height: 120.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/322/600',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Text(
                            '김선빈',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('bHomePage');
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: ListTile(
                              leading: const Icon(
                                Icons.home,
                              ),
                              title: Text(
                                'Home',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context).alternate,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('cTodoPage');
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: ListTile(
                              leading: const Icon(
                                Icons.calendar_month,
                              ),
                              title: Text(
                                'To Do',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context).alternate,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('dTimerPage');
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: ListTile(
                              leading: const Icon(
                                Icons.timer_sharp,
                              ),
                              title: Text(
                                'Timer',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context).alternate,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('eChatPage');
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: ListTile(
                              leading: const FaIcon(
                                FontAwesomeIcons.robot,
                                size: 20.0,
                              ),
                              title: Text(
                                'AI Chat',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context).alternate,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('fSettingPage');
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: ListTile(
                              leading: const Icon(
                                Icons.settings_sharp,
                              ),
                              title: Text(
                                'Setting',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context).alternate,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 217.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.05, 1.3),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth('aLoginPage', context.mounted);
                      },
                      text: 'Logout',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFC9C3C3),
                        textStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w800,
                                ),
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4B39EF), Color(0xFF39D2C0)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(1.0, -1.0),
              end: AlignmentDirectional(-1.0, 1.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 50.0, 24.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  '님',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0xFFE0E0E0),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '자신을 발전 시켜보세요!',
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFFE0E0E0),
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.sizeOf(context).width * 1.0,
                    minHeight: MediaQuery.sizeOf(context).height * 0.3,
                    maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                    maxHeight: MediaQuery.sizeOf(context).height * 0.3,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0x33FFFFFF),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '오늘 할일',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          StreamBuilder<List<TodosRecord>>(
                            stream: queryTodosRecord(
                              parent: currentUserReference,
                              queryBuilder: (todosRecord) => todosRecord
                                  .where(
                                    'date',
                                    isEqualTo: dateTimeFormat(
                                        "d/M/y", getCurrentTimestamp),
                                  )
                                  .where(
                                    'completed',
                                    isEqualTo: false,
                                  ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<TodosRecord> columnTodosRecordList =
                                  snapshot.data!;

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnTodosRecordList.length,
                                      (columnIndex) {
                                    final columnTodosRecord =
                                        columnTodosRecordList[columnIndex];
                                    return ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    columnTodosRecord.task,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              const Color(0xFFF5F6F6),
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (columnTodosRecord.timerUse)
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderRadius: 8.0,
                                                      buttonSize: 40.0,
                                                      icon: Icon(
                                                        Icons.timer_sharp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'dTimerPage');
                                                      },
                                                    ),
                                                  ),
                                                ToggleIcon(
                                                  onPressed: () async {
                                                    await columnTodosRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'completed':
                                                              !columnTodosRecord
                                                                  .completed,
                                                        },
                                                      ),
                                                    });
                                                  },
                                                  value: columnTodosRecord
                                                      .completed,
                                                  onIcon: const Icon(
                                                    Icons.check_box,
                                                    color: Color(0xFF11E957),
                                                    size: 24.0,
                                                  ),
                                                  offIcon: Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 160.0,
                        decoration: BoxDecoration(
                          color: const Color(0x00FFFFFF),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    dateTimeFormat(
                                        "MEd", FFAppState().currentTime),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    dateTimeFormat(
                                        "jms", FFAppState().currentTime),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: Colors.white,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: 140.0,
                                height: 150.0,
                                child: Stack(
                                  children: [
                                    PageView(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            StreamBuilder<List<TodosRecord>>(
                                              stream: queryTodosRecord(
                                                parent: currentUserReference,
                                                queryBuilder: (todosRecord) =>
                                                    todosRecord.where(
                                                  'date',
                                                  isEqualTo: dateTimeFormat(
                                                      "d/M/y",
                                                      getCurrentTimestamp),
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<TodosRecord>
                                                    chartTodosRecordList =
                                                    snapshot.data!;

                                                return SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.31,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.31,
                                                  child: FlutterFlowPieChart(
                                                    data: FFPieChartData(
                                                      values:
                                                          chartTodosRecordList
                                                              .map((d) =>
                                                                  d.duration)
                                                              .toList(),
                                                      colors:
                                                          chartPieChartColorsList1,
                                                      radius: [55.0],
                                                    ),
                                                    donutHoleRadius: 1.0,
                                                    donutHoleColor:
                                                        Colors.transparent,
                                                    sectionLabelType:
                                                        PieChartSectionLabelType
                                                            .percent,
                                                    sectionLabelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .override(
                                                              fontFamily:
                                                                  'Inter Tight',
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            StreamBuilder<List<TodosRecord>>(
                                              stream: queryTodosRecord(
                                                parent: currentUserReference,
                                                queryBuilder: (todosRecord) =>
                                                    todosRecord.where(
                                                  'date',
                                                  isEqualTo: dateTimeFormat(
                                                      "d/M/y",
                                                      getCurrentTimestamp),
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<TodosRecord>
                                                    chartTodosRecordList =
                                                    snapshot.data!;

                                                return SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.31,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.31,
                                                  child: Stack(
                                                    children: [
                                                      FlutterFlowPieChart(
                                                        data: FFPieChartData(
                                                          values:
                                                              chartTodosRecordList
                                                                  .map((d) => d
                                                                      .duration)
                                                                  .toList(),
                                                          colors:
                                                              chartPieChartColorsList2,
                                                          radius: [0.0],
                                                        ),
                                                        donutHoleRadius: 1.0,
                                                        donutHoleColor:
                                                            Colors.transparent,
                                                        sectionLabelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter Tight',
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child:
                                                            FlutterFlowChartLegendWidget(
                                                          entries:
                                                              chartTodosRecordList
                                                                  .map((d) =>
                                                                      d.task)
                                                                  .toList()
                                                                  .asMap()
                                                                  .entries
                                                                  .map(
                                                                    (label) =>
                                                                        LegendEntry(
                                                                      chartPieChartColorsList2[label
                                                                              .key %
                                                                          chartPieChartColorsList2
                                                                              .length],
                                                                      label
                                                                          .value,
                                                                    ),
                                                                  )
                                                                  .toList(),
                                                          width: 100.0,
                                                          height: 100.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          textPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          borderWidth: 1.0,
                                                          indicatorSize: 10.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: smooth_page_indicator
                                            .SmoothPageIndicator(
                                          controller: _model
                                                  .pageViewController ??=
                                              PageController(initialPage: 0),
                                          count: 2,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) async {
                                            await _model.pageViewController!
                                                .animateToPage(
                                              i,
                                              duration:
                                                  const Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                            safeSetState(() {});
                                          },
                                          effect: smooth_page_indicator
                                              .ExpandingDotsEffect(
                                            expansionFactor: 2.0,
                                            spacing: 8.0,
                                            radius: 8.0,
                                            dotWidth: 8.0,
                                            dotHeight: 10.0,
                                            dotColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            activeDotColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            paintStyle: PaintingStyle.fill,
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
                  ].divide(const SizedBox(width: 16.0)),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: const Color(0x33FFFFFF),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
