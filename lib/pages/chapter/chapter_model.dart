import '/flutter_flow/flutter_flow_util.dart';
import 'chapter_widget.dart' show ChapterWidget;
import 'package:flutter/material.dart';

class ChapterModel extends FlutterFlowModel<ChapterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
