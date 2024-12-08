import '/components/accommodations/accommodations_widget.dart';
import '/components/activities/activities_widget.dart';
import '/components/food/food_widget.dart';
import '/components/nav_item/nav_item_widget.dart';
import '/components/travel/travel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'McRoskey',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Sora',
                                fontSize: 26.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Text(
                          'FAMILY VACATION 2023',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Sora',
                                color: FlutterFlowTheme.of(context).lightGrey,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).alternate,
                            FlutterFlowTheme.of(context).fireOpal
                          ],
                          stops: const [0.0, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().activeTab = 0;
                          FFAppState().update(() {});
                        },
                        child: wrapWithModel(
                          model: _model.navItemModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: NavItemWidget(
                            text: 'TRAVEL',
                            selected: FFAppState().activeTab.toString() == '0',
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().activeTab = 1;
                        FFAppState().update(() {});
                      },
                      child: wrapWithModel(
                        model: _model.navItemModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: NavItemWidget(
                          text: 'ACCOMMODATIONS',
                          selected: FFAppState().activeTab.toString() == '1',
                          width: 132,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().activeTab = 2;
                        FFAppState().update(() {});
                      },
                      child: wrapWithModel(
                        model: _model.navItemModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: NavItemWidget(
                          text: 'ACTIVITIES',
                          selected: FFAppState().activeTab.toString() == '2',
                          width: 71,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().activeTab = 3;
                          FFAppState().update(() {});
                        },
                        child: wrapWithModel(
                          model: _model.navItemModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: NavItemWidget(
                            text: 'FOOD',
                            selected: FFAppState().activeTab.toString() == '3',
                            width: 38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  children: [
                    if (FFAppState().activeTab == 0)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.travelModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const TravelWidget(),
                        ),
                      ),
                    if (FFAppState().activeTab == 1)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.accommodationsModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const AccommodationsWidget(),
                        ),
                      ),
                    if (FFAppState().activeTab == 2)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.activitiesModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const ActivitiesWidget(),
                        ),
                      ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primaryBackground,
                            const Color(0x00F1F4F8)
                          ],
                          stops: const [0.2, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                      ),
                    ),
                    if (FFAppState().activeTab == 3)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.foodModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const FoodWidget(),
                        ),
                      ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primaryBackground,
                            const Color(0x00F1F4F8)
                          ],
                          stops: const [0.2, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
