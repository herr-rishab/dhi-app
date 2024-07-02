import '/flutter_flow/flutter_flow_util.dart';
import 'all_hospitals_widget.dart' show AllHospitalsWidget;
import 'package:flutter/material.dart';

class AllHospitalsModel extends FlutterFlowModel<AllHospitalsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
