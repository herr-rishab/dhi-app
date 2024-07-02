import '/flutter_flow/flutter_flow_util.dart';
import 'edit_budget_widget.dart' show EditBudgetWidget;
import 'package:flutter/material.dart';

class EditBudgetModel extends FlutterFlowModel<EditBudgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
