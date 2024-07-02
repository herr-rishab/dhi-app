import '/flutter_flow/flutter_flow_util.dart';
import 'ai_visual_answer_widget.dart' show AiVisualAnswerWidget;
import 'package:flutter/material.dart';

class AiVisualAnswerModel extends FlutterFlowModel<AiVisualAnswerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
