import '/components/drive_row/drive_row_widget.dart';
import '/components/flight_row/flight_row_widget.dart';
import '/components/layover_row/layover_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'travel_widget.dart' show TravelWidget;
import 'package:flutter/material.dart';

class TravelModel extends FlutterFlowModel<TravelWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FlightRow component.
  late FlightRowModel flightRowModel1;
  // Model for LayoverRow component.
  late LayoverRowModel layoverRowModel1;
  // Model for FlightRow component.
  late FlightRowModel flightRowModel2;
  // Model for DriveRow component.
  late DriveRowModel driveRowModel1;
  // Model for DriveRow component.
  late DriveRowModel driveRowModel2;
  // Model for FlightRow component.
  late FlightRowModel flightRowModel3;
  // Model for LayoverRow component.
  late LayoverRowModel layoverRowModel2;
  // Model for FlightRow component.
  late FlightRowModel flightRowModel4;

  @override
  void initState(BuildContext context) {
    flightRowModel1 = createModel(context, () => FlightRowModel());
    layoverRowModel1 = createModel(context, () => LayoverRowModel());
    flightRowModel2 = createModel(context, () => FlightRowModel());
    driveRowModel1 = createModel(context, () => DriveRowModel());
    driveRowModel2 = createModel(context, () => DriveRowModel());
    flightRowModel3 = createModel(context, () => FlightRowModel());
    layoverRowModel2 = createModel(context, () => LayoverRowModel());
    flightRowModel4 = createModel(context, () => FlightRowModel());
  }

  @override
  void dispose() {
    flightRowModel1.dispose();
    layoverRowModel1.dispose();
    flightRowModel2.dispose();
    driveRowModel1.dispose();
    driveRowModel2.dispose();
    flightRowModel3.dispose();
    layoverRowModel2.dispose();
    flightRowModel4.dispose();
  }
}
