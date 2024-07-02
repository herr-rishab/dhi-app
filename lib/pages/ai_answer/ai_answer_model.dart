import '/flutter_flow/flutter_flow_util.dart';
import 'ai_answer_widget.dart' show AiAnswerWidget;
import 'package:flutter/material.dart';

class AiAnswerModel extends FlutterFlowModel<AiAnswerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
