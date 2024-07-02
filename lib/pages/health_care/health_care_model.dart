import '/flutter_flow/flutter_flow_util.dart';
import 'health_care_widget.dart' show HealthCareWidget;
import 'package:flutter/material.dart';

class HealthCareModel extends FlutterFlowModel<HealthCareWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
