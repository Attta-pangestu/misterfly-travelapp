import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'ticket_field_model.dart';
export 'ticket_field_model.dart';

class TicketFieldWidget extends StatefulWidget {
  const TicketFieldWidget({
    super.key,
    this.title,
    this.value,
  });

  final String? title;
  final String? value;

  @override
  State<TicketFieldWidget> createState() => _TicketFieldWidgetState();
}

class _TicketFieldWidgetState extends State<TicketFieldWidget> {
  late TicketFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketFieldModel());
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
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Sora',
                    color: FlutterFlowTheme.of(context).lightGrey,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              widget.value!,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Sora',
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
