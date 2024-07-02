import '/flutter_flow/flutter_flow_util.dart';
import 'video_page_widget.dart' show VideoPageWidget;
import 'package:flutter/material.dart';

class VideoPageModel extends FlutterFlowModel<VideoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
