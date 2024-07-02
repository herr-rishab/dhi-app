import '/flutter_flow/flutter_flow_util.dart';
import 'select_avatar_widget.dart' show SelectAvatarWidget;
import 'package:flutter/material.dart';

class SelectAvatarModel extends FlutterFlowModel<SelectAvatarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
