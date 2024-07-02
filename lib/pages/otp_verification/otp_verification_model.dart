import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_verification_widget.dart' show OtpVerificationWidget;
import 'package:flutter/material.dart';

class OtpVerificationModel extends FlutterFlowModel<OtpVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // Stores action output result for [Backend Call - API (validateOTP)] action in Button widget.
  ApiCallResponse? validateOTP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
