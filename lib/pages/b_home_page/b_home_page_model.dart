import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'b_home_page_widget.dart' show BHomePageWidget;
import 'package:flutter/material.dart';

class BHomePageModel extends FlutterFlowModel<BHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
