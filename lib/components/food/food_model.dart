import '/components/food_card/food_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'food_widget.dart' show FoodWidget;
import 'package:flutter/material.dart';

class FoodModel extends FlutterFlowModel<FoodWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FoodCard component.
  late FoodCardModel foodCardModel1;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel2;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel3;

  @override
  void initState(BuildContext context) {
    foodCardModel1 = createModel(context, () => FoodCardModel());
    foodCardModel2 = createModel(context, () => FoodCardModel());
    foodCardModel3 = createModel(context, () => FoodCardModel());
  }

  @override
  void dispose() {
    foodCardModel1.dispose();
    foodCardModel2.dispose();
    foodCardModel3.dispose();
  }
}
