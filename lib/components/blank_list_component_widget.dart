import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blank_list_component_model.dart';
export 'blank_list_component_model.dart';

class BlankListComponentWidget extends StatefulWidget {
  const BlankListComponentWidget({Key? key}) : super(key: key);

  @override
  _BlankListComponentWidgetState createState() =>
      _BlankListComponentWidgetState();
}

class _BlankListComponentWidgetState extends State<BlankListComponentWidget> {
  late BlankListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlankListComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: () {
                if (MediaQuery.sizeOf(context).width >= 1170.0) {
                  return 700.0;
                } else if (MediaQuery.sizeOf(context).width <= 470.0) {
                  return 330.0;
                } else {
                  return 530.0;
                }
              }(),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF020202),
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectionArea(
                      child: AutoSizeText(
                    'Welcome to AhmedGPT. Ask me anything as I know everything.🧞',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 14.0,
                          lineHeight: 1.5,
                        ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
