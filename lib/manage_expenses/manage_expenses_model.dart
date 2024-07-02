import '/flutter_flow/flutter_flow_util.dart';
import 'manage_expenses_widget.dart' show ManageExpensesWidget;
import 'package:flutter/material.dart';

class ManageExpensesModel extends FlutterFlowModel<ManageExpensesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
