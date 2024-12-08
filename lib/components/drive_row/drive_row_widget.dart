import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'drive_row_model.dart';
export 'drive_row_model.dart';

class DriveRowWidget extends StatefulWidget {
  const DriveRowWidget({
    super.key,
    this.complete,
    this.title,
    this.subtitle,
    this.index,
  });

  final bool? complete;
  final String? title;
  final String? subtitle;
  final int? index;

  @override
  State<DriveRowWidget> createState() => _DriveRowWidgetState();
}

class _DriveRowWidgetState extends State<DriveRowWidget> {
  late DriveRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DriveRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        width: 360.1,
        height: 70.0,
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50.0,
              height: 200.0,
              child: Stack(
                alignment: const AlignmentDirectional(0.0, -1.0),
                children: [
                  if (widget.index != 0)
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: 2.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                      ),
                    ),
                  if (widget.index != -1)
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: Container(
                          width: 2.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lineColor,
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Stack(
                      children: [
                        if (widget.complete ?? true)
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).fireOpal,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.check,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 24.0,
                            ),
                          ),
                        if (!widget.complete!)
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFD6D9),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFFFFADB3),
                                width: 1.0,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title!,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Sora',
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      widget.subtitle!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sora',
                            color: FlutterFlowTheme.of(context).lightGrey,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Icon(
                Icons.drive_eta,
                color: FlutterFlowTheme.of(context).lightGrey,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
