import '/flutter_flow/flutter_flow_util.dart';
import 'finance_widget.dart' show FinanceWidget;
import 'package:flutter/material.dart';

class FinanceModel extends FlutterFlowModel<FinanceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
