import '/components/food_card/food_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'food_model.dart';
export 'food_model.dart';

class FoodWidget extends StatefulWidget {
  const FoodWidget({super.key});

  @override
  State<FoodWidget> createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> with TickerProviderStateMixin {
  late FoodModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          SaturateEffect(
            curve: Curves.easeIn,
            delay: 900.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'foodCardOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 75.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.8, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'foodCardOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 75.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.8, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'foodCardOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 75.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 550.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.8, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: FFAppState().cookSelected[0] &&
                          FFAppState().cookSelected[1] &&
                          FFAppState().cookSelected[2]
                      ? 0.0
                      : 65.0,
                  constraints: const BoxConstraints(
                    maxWidth: 450.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).cerise,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning_rounded,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 30.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: AutoSizeText(
                              'Some meals still need volunteers to cook',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sora',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: FFAppState().cookSelected[0] &&
                          FFAppState().cookSelected[1] &&
                          FFAppState().cookSelected[2]
                      ? 0.0
                      : 30.0,
                  constraints: const BoxConstraints(
                    maxWidth: 450.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'HOME-MADE MEALS',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Sora',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.foodCardModel1,
                updateCallback: () => safeSetState(() {}),
                child: FoodCardWidget(
                  title: 'Coq au Vin',
                  description:
                      'with chicken braised in red wine, bacon, mushrooms, and onions',
                  signedUp: false,
                  image:
                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/coq-au-vin.png',
                  cook: FFAppState().cooks[0],
                  index: 0,
                ),
              ).animateOnPageLoad(
                  animationsMap['foodCardOnPageLoadAnimation1']!),
            ),
            wrapWithModel(
              model: _model.foodCardModel2,
              updateCallback: () => safeSetState(() {}),
              child: FoodCardWidget(
                title: 'Boeuf Bourguignon',
                description: 'with beef, bacon, carrots, onions, and mushrooms',
                signedUp: FFAppState().cookSelected[1],
                image:
                    'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/boeuf-bourguignon.png',
                cook: FFAppState().cooks[1],
                index: 1,
              ),
            ).animateOnPageLoad(animationsMap['foodCardOnPageLoadAnimation2']!),
            wrapWithModel(
              model: _model.foodCardModel3,
              updateCallback: () => safeSetState(() {}),
              child: FoodCardWidget(
                title: 'Ratatouille',
                description:
                    'with eggplant, zucchini, bell peppers, and tomatoes',
                signedUp: FFAppState().cookSelected[2],
                image:
                    'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/ratatouille.png',
                cook: FFAppState().cooks[2],
                index: 2,
              ),
            ).animateOnPageLoad(animationsMap['foodCardOnPageLoadAnimation3']!),
          ],
        ),
      ),
    );
  }
}
