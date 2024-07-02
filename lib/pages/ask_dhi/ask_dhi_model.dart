import '/flutter_flow/flutter_flow_util.dart';
import 'ask_dhi_widget.dart' show AskDhiWidget;
import 'package:flutter/material.dart';

class AskDhiModel extends FlutterFlowModel<AskDhiWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? generatedText;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
