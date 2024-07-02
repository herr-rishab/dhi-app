import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_result_model.dart';
export 'no_result_model.dart';

class NoResultWidget extends StatefulWidget {
  const NoResultWidget({super.key});

  @override
  State<NoResultWidget> createState() => _NoResultWidgetState();
}

class _NoResultWidgetState extends State<NoResultWidget> {
  late NoResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoResultModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      FFLocalizations.of(context).getText(
        'q5j5pp2v' /* no results found */,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Bergen',
            fontSize: 16.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w600,
            useGoogleFonts: false,
          ),
    );
  }
}
