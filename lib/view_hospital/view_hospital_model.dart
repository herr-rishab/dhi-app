import '/flutter_flow/flutter_flow_util.dart';
import 'view_hospital_widget.dart' show ViewHospitalWidget;
import 'package:flutter/material.dart';

class ViewHospitalModel extends FlutterFlowModel<ViewHospitalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
