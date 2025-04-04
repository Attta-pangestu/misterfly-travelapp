import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'activity_card_model.dart';
export 'activity_card_model.dart';

class ActivityCardWidget extends StatefulWidget {
  const ActivityCardWidget({
    super.key,
    this.title,
    this.subtitle,
    this.description,
    this.expanded,
    this.image,
    this.favorite,
    this.index,
  });

  final String? title;
  final String? subtitle;
  final String? description;
  final bool? expanded;
  final String? image;
  final bool? favorite;
  final int? index;

  @override
  State<ActivityCardWidget> createState() => _ActivityCardWidgetState();
}

class _ActivityCardWidgetState extends State<ActivityCardWidget>
    with TickerProviderStateMixin {
  late ActivityCardModel _model;

  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityCardModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: const Offset(0, 0),
            end: const Offset(0, 0.175),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          SaturateEffect(
            curve: Curves.bounceOut,
            delay: 500.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 30.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        constraints: const BoxConstraints(
          maxWidth: 450.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 30.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                10.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: widget.expanded! ? 56.0 : 140.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      widget.image!,
                    ),
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (animationsMap[
                                'containerOnActionTriggerAnimation'] !=
                            null) {
                          safeSetState(() => hasContainerTriggered = true);
                          SchedulerBinding.instance.addPostFrameCallback(
                              (_) async => animationsMap[
                                      'containerOnActionTriggerAnimation']!
                                  .controller
                                  .forward(from: 0.0)
                                  .whenComplete(animationsMap[
                                          'containerOnActionTriggerAnimation']!
                                      .controller
                                      .reverse));
                        }
                        FFAppState().favorites = functions
                            .flipBoolAtIndex(
                                FFAppState().favorites.toList(), widget.index)!
                            .toList()
                            .cast<bool>();
                        FFAppState().update(() {});
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 2.0,
                            sigmaY: 2.0,
                          ),
                          child: Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: const BoxDecoration(
                              color: Color(0xA5FFFFFF),
                              shape: BoxShape.circle,
                            ),
                            child: SizedBox(
                              width: 35.0,
                              height: 35.0,
                              child: Stack(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                children: [
                                  if (!widget.favorite!)
                                    Icon(
                                      Icons.favorite_border,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                  if (widget.favorite ?? true)
                                    Icon(
                                      Icons.favorite,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            widget.title!,
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Sora',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                          AutoSizeText(
                            widget.subtitle!,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Sora',
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 80.0,
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).marigold,
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '+7',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Sora',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.5, 0.0),
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    width: 25.0,
                                    height: 25.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/jp.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    width: 25.0,
                                    height: 25.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/maggie.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.5, 0.0),
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    width: 25.0,
                                    height: 25.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/mcroskey-headshot.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: widget.expanded! ? 85.0 : 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          widget.description!,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Sora',
                                color: FlutterFlowTheme.of(context).lightGrey,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation3']!),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ).animateOnActionTrigger(
          animationsMap['containerOnActionTriggerAnimation']!,
          hasBeenTriggered: hasContainerTriggered),
    );
  }
}
