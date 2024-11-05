import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'd_timer_page_model.dart';
export 'd_timer_page_model.dart';

class DTimerPageWidget extends StatefulWidget {
  const DTimerPageWidget({super.key});

  @override
  State<DTimerPageWidget> createState() => _DTimerPageWidgetState();
}

class _DTimerPageWidgetState extends State<DTimerPageWidget> {
  late DTimerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DTimerPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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

                            FFAppState().taskSecelted = false;
                            safeSetState(() {});
                            FFAppState().dropMin = 0;
                            FFAppState().dropSec = 0;
                            FFAppState().timeprogress = true;
                            safeSetState(() {});
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

                            FFAppState().dropMin = 0;
                            FFAppState().dropSec = 0;
                            FFAppState().timeprogress = true;
                            safeSetState(() {});
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

                            FFAppState().dropMin = 0;
                            FFAppState().dropSec = 0;
                            FFAppState().timeprogress = true;
                            safeSetState(() {});
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

                            FFAppState().dropMin = 0;
                            FFAppState().dropSec = 0;
                            FFAppState().timeprogress = true;
                            safeSetState(() {});
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
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 52.0, 24.0, 24.0),
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
                      Text(
                        '집중 타이머',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: 230.0,
                    height: 230.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: CircularPercentIndicator(
                      percent: FFAppState().timeprogress
                          ? 1.0
                          : (_model.timerMilliseconds /
                              (functions.finalOpeTime(FFAppState().dropMin,
                                  FFAppState().dropSec)!)),
                      radius: 110.0,
                      lineWidth: 20.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: StreamBuilder<List<TodosRecord>>(
                      stream: queryTodosRecord(
                        queryBuilder: (todosRecord) => todosRecord.where(
                          'task',
                          isEqualTo: _model.dropDownValue3,
                        ),
                        singleRecord: true,
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
                        List<TodosRecord> timerTodosRecordList = snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final timerTodosRecord = timerTodosRecordList.isNotEmpty
                            ? timerTodosRecordList.first
                            : null;

                        return FlutterFlowTimer(
                          initialTime: _model.timerInitialTimeMs,
                          getDisplayTime: (value) =>
                              StopWatchTimer.getDisplayTime(
                            value,
                            hours: false,
                            milliSecond: false,
                          ),
                          controller: _model.timerController,
                          updateStateInterval: const Duration(milliseconds: 100),
                          onChanged: (value, displayTime, shouldUpdate) {
                            _model.timerMilliseconds = value;
                            _model.timerValue = displayTime;
                            if (shouldUpdate) safeSetState(() {});
                          },
                          onEnded: () async {
                            FFAppState().timeprogress = true;
                            FFAppState().dropMin = 0;
                            FFAppState().dropSec = 0;
                            FFAppState().isStartedTIMER =
                                !(FFAppState().isStartedTIMER ?? true);
                            FFAppState().recordStopTime = getCurrentTimestamp;
                            safeSetState(() {});

                            await timerTodosRecord!.reference.update({
                              ...mapToFirestore(
                                {
                                  'duration': FieldValue.increment(
                                      functions.lastDurationcaclu(
                                          FFAppState().recordStartTime,
                                          FFAppState().recordStopTime)!),
                                },
                              ),
                            });
                          },
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Inter Tight',
                                fontSize: 40.0,
                                letterSpacing: 0.0,
                              ),
                        );
                      },
                    ),
                  ),
                ),
                StreamBuilder<List<TodosRecord>>(
                  stream: queryTodosRecord(
                    parent: currentUserReference,
                    queryBuilder: (todosRecord) => todosRecord
                        .where(
                          'date',
                          isEqualTo:
                              dateTimeFormat("d/M/y", getCurrentTimestamp),
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
                    List<TodosRecord> containerTodosRecordList = snapshot.data!;

                    return Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: const Color(0x33FFFFFF),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '시간 설정',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity: 0.7,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 5.0, 0.0, 0.0),
                                          child: FlutterFlowDropDown<int>(
                                            controller: _model
                                                    .dropDownValueController1 ??=
                                                FormFieldController<int>(
                                              _model.dropDownValue1 ??= 0,
                                            ),
                                            options: List<int>.from([
                                              0,
                                              1,
                                              2,
                                              3,
                                              4,
                                              5,
                                              6,
                                              7,
                                              8,
                                              9,
                                              10,
                                              11,
                                              12,
                                              13,
                                              14,
                                              15,
                                              16,
                                              17,
                                              18,
                                              19,
                                              20,
                                              21,
                                              22,
                                              23,
                                              24,
                                              25,
                                              26,
                                              27,
                                              28,
                                              29,
                                              30,
                                              31,
                                              32,
                                              33,
                                              34,
                                              35,
                                              36,
                                              37,
                                              38,
                                              39,
                                              40,
                                              41,
                                              42,
                                              43,
                                              44,
                                              45,
                                              46,
                                              47,
                                              48,
                                              49,
                                              50,
                                              51,
                                              52,
                                              53,
                                              54,
                                              55,
                                              56,
                                              57,
                                              58,
                                              59
                                            ]),
                                            optionLabels: const [
                                              '0',
                                              '1',
                                              '2',
                                              '3',
                                              '4',
                                              '5',
                                              '6',
                                              '7',
                                              '8',
                                              '9',
                                              '10',
                                              '11',
                                              '12',
                                              '13',
                                              '14',
                                              '15',
                                              '16',
                                              '17',
                                              '18',
                                              '19',
                                              '20',
                                              '21',
                                              '22',
                                              '23',
                                              '24',
                                              '25',
                                              '26',
                                              '27',
                                              '28',
                                              '29',
                                              '30',
                                              '31',
                                              '32',
                                              '33',
                                              '34',
                                              '35',
                                              '36',
                                              '37',
                                              '38',
                                              '39',
                                              '40',
                                              '41',
                                              '42',
                                              '43',
                                              '44',
                                              '45',
                                              '46',
                                              '47',
                                              '48',
                                              '49',
                                              '50',
                                              '51',
                                              '52',
                                              '53',
                                              '54',
                                              '55',
                                              '56',
                                              '57',
                                              '58',
                                              '59'
                                            ],
                                            onChanged: (val) async {
                                              safeSetState(() =>
                                                  _model.dropDownValue1 = val);
                                              if ((_model.dropDownValue1 ==
                                                      FFAppState().drop0) &&
                                                  (_model.dropDownValue2 ==
                                                      FFAppState().drop0)) {
                                                FFAppState().timeprogress =
                                                    true;
                                                safeSetState(() {});
                                              } else {
                                                FFAppState().timeprogress =
                                                    false;
                                                safeSetState(() {});
                                              }

                                              FFAppState().dropMin = 0;
                                              safeSetState(() {});
                                              FFAppState().dropMin =
                                                  functions.converHourToMs(
                                                      _model.dropDownValue1)!;
                                              safeSetState(() {});
                                              _model.timerController.timer
                                                  .setPresetTime(
                                                mSec: functions.finalOpeTime(
                                                    FFAppState().dropMin,
                                                    FFAppState().dropSec)!,
                                                add: false,
                                              );
                                              _model.timerController
                                                  .onResetTimer();
                                            },
                                            width: 80.0,
                                            height: 30.0,
                                            maxHeight: 200.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: '0',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor: const Color(0xFFE1EFED),
                                            elevation: 2.0,
                                            borderColor: const Color(0x00FFFFFF),
                                            borderWidth: 0.0,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.17, -0.59),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            '분',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Noto Serif',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.7,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.59, -0.53),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 5.0, 0.0, 0.0),
                                            child: FlutterFlowDropDown<int>(
                                              controller: _model
                                                      .dropDownValueController2 ??=
                                                  FormFieldController<int>(
                                                _model.dropDownValue2 ??= 0,
                                              ),
                                              options: List<int>.from([
                                                0,
                                                1,
                                                2,
                                                3,
                                                4,
                                                5,
                                                6,
                                                7,
                                                8,
                                                9,
                                                10,
                                                11,
                                                12,
                                                13,
                                                14,
                                                15,
                                                16,
                                                17,
                                                18,
                                                19,
                                                20,
                                                21,
                                                22,
                                                23,
                                                24,
                                                25,
                                                26,
                                                27,
                                                28,
                                                29,
                                                30,
                                                31,
                                                32,
                                                33,
                                                34,
                                                35,
                                                36,
                                                37,
                                                38,
                                                39,
                                                40,
                                                41,
                                                42,
                                                43,
                                                44,
                                                45,
                                                46,
                                                47,
                                                48,
                                                49,
                                                50,
                                                51,
                                                52,
                                                53,
                                                54,
                                                55,
                                                56,
                                                57,
                                                58,
                                                59
                                              ]),
                                              optionLabels: const [
                                                '0',
                                                '1',
                                                '2',
                                                '3',
                                                '4',
                                                '5',
                                                '6',
                                                '7',
                                                '8',
                                                '9',
                                                '10',
                                                '11',
                                                '12',
                                                '13',
                                                '14',
                                                '15',
                                                '16',
                                                '17',
                                                '18',
                                                '19',
                                                '20',
                                                '21',
                                                '22',
                                                '23',
                                                '24',
                                                '25',
                                                '26',
                                                '27',
                                                '28',
                                                '29',
                                                '30',
                                                '31',
                                                '32',
                                                '33',
                                                '34',
                                                '35',
                                                '36',
                                                '37',
                                                '38',
                                                '39',
                                                '40',
                                                '41',
                                                '42',
                                                '43',
                                                '44',
                                                '45',
                                                '46',
                                                '47',
                                                '48',
                                                '49',
                                                '50',
                                                '51',
                                                '52',
                                                '53',
                                                '54',
                                                '55',
                                                '56',
                                                '57',
                                                '58',
                                                '59'
                                              ],
                                              onChanged: (val) async {
                                                safeSetState(() => _model
                                                    .dropDownValue2 = val);
                                                if ((_model.dropDownValue1 ==
                                                        FFAppState().drop0) &&
                                                    (_model.dropDownValue2 ==
                                                        FFAppState().drop0)) {
                                                  FFAppState().timeprogress =
                                                      true;
                                                  safeSetState(() {});
                                                } else {
                                                  FFAppState().timeprogress =
                                                      false;
                                                  safeSetState(() {});
                                                }

                                                FFAppState().dropSec = 0;
                                                safeSetState(() {});
                                                FFAppState().dropSec =
                                                    functions.converMntToMs(
                                                        _model.dropDownValue2)!;
                                                safeSetState(() {});
                                                _model.timerController.timer
                                                    .setPresetTime(
                                                  mSec: functions.finalOpeTime(
                                                      FFAppState().dropMin,
                                                      FFAppState().dropSec)!,
                                                  add: false,
                                                );
                                                _model.timerController
                                                    .onResetTimer();
                                              },
                                              width: 80.0,
                                              height: 30.0,
                                              maxHeight: 200.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: '0',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor: const Color(0xFFE1EFED),
                                              elevation: 2.0,
                                              borderColor: const Color(0x00FFFFFF),
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.86, -0.53),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 14.0, 5.0, 0.0),
                                          child: Text(
                                            '초',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Inter Tight',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      '오늘 할일 목록',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: StreamBuilder<List<TodosRecord>>(
                                      stream: queryTodosRecord(
                                        parent: currentUserReference,
                                        queryBuilder: (todosRecord) =>
                                            todosRecord
                                                .where(
                                                  'date',
                                                  isEqualTo: dateTimeFormat(
                                                      "d/M/y",
                                                      getCurrentTimestamp),
                                                )
                                                .where(
                                                  'completed',
                                                  isEqualTo: false,
                                                )
                                                .where(
                                                  'TimerUse',
                                                  isEqualTo: true,
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TodosRecord>
                                            dropDownTodosRecordList =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController3 ??=
                                              FormFieldController<String>(null),
                                          options: containerTodosRecordList
                                              .where((e) => e.timerUse)
                                              .toList()
                                              .map((e) => e.task)
                                              .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.dropDownValue3 = val);
                                            FFAppState().taskSecelted = true;
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model.dropDownValueController1
                                                  ?.reset();
                                              _model.dropDownValueController2
                                                  ?.reset();
                                            });
                                          },
                                          width: 250.0,
                                          height: 30.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: '할일을 선택하세요.',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.1, -0.11),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        '카테고리 설정',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 250.0,
                                        height: 40.0,
                                        decoration: const BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<TodosRecord>>(
                                              stream: queryTodosRecord(
                                                queryBuilder: (todosRecord) =>
                                                    todosRecord.where(
                                                  'task',
                                                  isEqualTo:
                                                      _model.dropDownValue3,
                                                ),
                                                singleRecord: true,
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
                                                    textTodosRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final textTodosRecord =
                                                    textTodosRecordList
                                                            .isNotEmpty
                                                        ? textTodosRecordList
                                                            .first
                                                        : null;

                                                return Text(
                                                  valueOrDefault<String>(
                                                    FFAppState().taskSecelted
                                                        ? textTodosRecord
                                                            ?.category
                                                        : '할일을 선택하세요',
                                                    '할일 선택',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (FFAppState().isStartedTIMER == false)
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.03, 0.74),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().isStartedTIMER =
                                            !(FFAppState().isStartedTIMER ??
                                                true);
                                        FFAppState().timeprogress = false;
                                        FFAppState().recordStartTime =
                                            getCurrentTimestamp;
                                        safeSetState(() {});
                                        _model.timerController.onStartTimer();
                                      },
                                      text: '시작',
                                      options: FFButtonOptions(
                                        width: 200.0,
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 5.0,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                if (FFAppState().isStartedTIMER == true)
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.51, 0.83),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              _model.timerController
                                                  .onStopTimer();
                                            },
                                            text: '중지',
                                            options: FFButtonOptions(
                                              width: 57.0,
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment:
                                                  IconAlignment.start,
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    color: Colors.black,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                              elevation: 6.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.51, 0.83),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              _model.timerController
                                                  .onStartTimer();
                                            },
                                            text: '재개',
                                            options: FFButtonOptions(
                                              width: 57.0,
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment:
                                                  IconAlignment.start,
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    color: Colors.black,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                              elevation: 6.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.51, 0.83),
                                          child:
                                              StreamBuilder<List<TodosRecord>>(
                                            stream: queryTodosRecord(
                                              queryBuilder: (todosRecord) =>
                                                  todosRecord.where(
                                                'task',
                                                isEqualTo:
                                                    _model.dropDownValue3,
                                              ),
                                              singleRecord: true,
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
                                                  buttonTodosRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final buttonTodosRecord =
                                                  buttonTodosRecordList
                                                          .isNotEmpty
                                                      ? buttonTodosRecordList
                                                          .first
                                                      : null;

                                              return FFButtonWidget(
                                                onPressed: () async {
                                                  FFAppState().timeprogress =
                                                      true;
                                                  FFAppState().dropMin = 0;
                                                  FFAppState().dropSec = 0;
                                                  FFAppState().isStartedTIMER =
                                                      !(FFAppState()
                                                              .isStartedTIMER ??
                                                          true);
                                                  FFAppState().recordStopTime =
                                                      getCurrentTimestamp;
                                                  safeSetState(() {});
                                                  safeSetState(() {
                                                    _model
                                                        .dropDownValueController1
                                                        ?.reset();
                                                    _model
                                                        .dropDownValueController2
                                                        ?.reset();
                                                  });
                                                  _model.timerController
                                                      .onResetTimer();

                                                  await buttonTodosRecord!
                                                      .reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'duration': FieldValue.increment(
                                                            functions.lastDurationcaclu(
                                                                FFAppState()
                                                                    .recordStartTime,
                                                                FFAppState()
                                                                    .recordStopTime)!),
                                                      },
                                                    ),
                                                  });
                                                },
                                                text: '종료',
                                                options: FFButtonOptions(
                                                  width: 57.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.start,
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.white,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Inter Tight',
                                                            color: Colors.black,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                  elevation: 6.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
