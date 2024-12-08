import '/components/accommodations/accommodations_widget.dart';
import '/components/activities/activities_widget.dart';
import '/components/food/food_widget.dart';
import '/components/nav_item/nav_item_widget.dart';
import '/components/travel/travel_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavItem component.
  late NavItemModel navItemModel1;
  // Model for NavItem component.
  late NavItemModel navItemModel2;
  // Model for NavItem component.
  late NavItemModel navItemModel3;
  // Model for NavItem component.
  late NavItemModel navItemModel4;
  // Model for Travel component.
  late TravelModel travelModel;
  // Model for Accommodations component.
  late AccommodationsModel accommodationsModel;
  // Model for Activities component.
  late ActivitiesModel activitiesModel;
  // Model for Food component.
  late FoodModel foodModel;

  @override
  void initState(BuildContext context) {
    navItemModel1 = createModel(context, () => NavItemModel());
    navItemModel2 = createModel(context, () => NavItemModel());
    navItemModel3 = createModel(context, () => NavItemModel());
    navItemModel4 = createModel(context, () => NavItemModel());
    travelModel = createModel(context, () => TravelModel());
    accommodationsModel = createModel(context, () => AccommodationsModel());
    activitiesModel = createModel(context, () => ActivitiesModel());
    foodModel = createModel(context, () => FoodModel());
  }

  @override
  void dispose() {
    navItemModel1.dispose();
    navItemModel2.dispose();
    navItemModel3.dispose();
    navItemModel4.dispose();
    travelModel.dispose();
    accommodationsModel.dispose();
    activitiesModel.dispose();
    foodModel.dispose();
  }
}
