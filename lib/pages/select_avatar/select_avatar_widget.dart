import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'select_avatar_model.dart';
export 'select_avatar_model.dart';

class SelectAvatarWidget extends StatefulWidget {
  const SelectAvatarWidget({super.key});

  @override
  State<SelectAvatarWidget> createState() => _SelectAvatarWidgetState();
}

class _SelectAvatarWidgetState extends State<SelectAvatarWidget> {
  late SelectAvatarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectAvatarModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SelectAvatar'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 32.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'w4swb5o2' /* Welcome to dhi  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      TextSpan(
                                        text: currentUserDisplayName,
                                        style: GoogleFonts.getFont(
                                          'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'an26heut' /* ! */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 20.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'z6e149et' /* Please select your avatar */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/lb7k3hpikfgq/Avatar_1.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_1.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/mc65yx7lwzq8/Avatar_2.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_2.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/1n4bkzelgxo0/Avatar_3.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_3.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/j1pqfids79w6/Avatar_4.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_4.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/d2bf78lesl1j/Avatar_5.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_5.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/sf8ebkt92qme/Avatar_6.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_6.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/zqkj2mk9ht30/Avatar_7.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_7.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/f68gi0u6qu3l/Avatar_8.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_8.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.update(
                                              createUserDetailsRecordData(
                                            photoUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-dhi-5nroic/assets/mlgcd8f8o955/Avatar_9.png',
                                          ));

                                          context.pushNamed('HomePage');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                          child: Image.asset(
                                            'assets/images/Avatar_9.png',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.cover,
                                          ),
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
                    ],
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            'https://images.unsplash.com/photo-1514924013411-cbf25faa35bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1380&q=80',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
