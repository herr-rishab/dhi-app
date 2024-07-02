import '/flutter_flow/flutter_flow_util.dart';
import 'all_news_widget.dart' show AllNewsWidget;
import 'package:flutter/material.dart';

class AllNewsModel extends FlutterFlowModel<AllNewsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
