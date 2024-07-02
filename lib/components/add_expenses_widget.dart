import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'add_expenses_model.dart';
export 'add_expenses_model.dart';

class AddExpensesWidget extends StatefulWidget {
  const AddExpensesWidget({super.key});

  @override
  State<AddExpensesWidget> createState() => _AddExpensesWidgetState();
}

class _AddExpensesWidgetState extends State<AddExpensesWidget> {
  late AddExpensesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddExpensesModel());

    _model.amountTextController ??= TextEditingController();
    _model.amountFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: StreamBuilder<List<BudgetRecord>>(
          stream: queryBudgetRecord(
            queryBuilder: (budgetRecord) => budgetRecord.where(
              'uid',
              isEqualTo: currentUserUid,
            ),
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<BudgetRecord> columnBudgetRecordList = snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final columnBudgetRecord = columnBudgetRecordList.isNotEmpty
                ? columnBudgetRecordList.first
                : null;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: 50.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '2vnmbnb6' /* add expense */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Bergen',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'xmaxa86v' /* Please enter your new expense */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: FlutterFlowChoiceChips(
                        options: [
                          ChipData(
                              FFLocalizations.of(context).getText(
                                'poeizgvf' /* Food */,
                              ),
                              Icons.fastfood_rounded),
                          ChipData(
                              FFLocalizations.of(context).getText(
                                'h75pl22p' /* Housing */,
                              ),
                              FontAwesomeIcons.houseUser),
                          ChipData(
                              FFLocalizations.of(context).getText(
                                '6sb7txdj' /* Utilities */,
                              ),
                              Icons.ballot_rounded),
                          ChipData(
                              FFLocalizations.of(context).getText(
                                'bmu0zpjt' /* Others */,
                              ),
                              FontAwesomeIcons.moneyCheck)
                        ],
                        onChanged: (val) => setState(
                            () => _model.choiceChipsValue = val?.firstOrNull),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          iconColor: FlutterFlowTheme.of(context).primary,
                          iconSize: 16.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 8.0, 0.0),
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderWidth: 1.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: Colors.white,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 16.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 8.0, 0.0),
                          elevation: 0.0,
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          borderWidth: 1.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 8.0,
                        rowSpacing: 8.0,
                        multiselect: false,
                        initialized: _model.choiceChipsValue != null,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController ??=
                            FormFieldController<List<String>>(
                          [
                            FFLocalizations.of(context).getText(
                              '99lllebe' /* Food */,
                            )
                          ],
                        ),
                        wrapped: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: TextFormField(
                      controller: _model.amountTextController,
                      focusNode: _model.amountFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: FFLocalizations.of(context).getText(
                          '4yr29ihd' /* Amount */,
                        ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 32.0, 20.0, 12.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.number,
                      validator: _model.amountTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 44.0),
                        child: StreamBuilder<List<BudgetRecord>>(
                          stream: queryBudgetRecord(
                            queryBuilder: (budgetRecord) => budgetRecord.where(
                              'uid',
                              isEqualTo: currentUserUid,
                            ),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<BudgetRecord> buttonBudgetRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final buttonBudgetRecord =
                                buttonBudgetRecordList.isNotEmpty
                                    ? buttonBudgetRecordList.first
                                    : null;
                            return FFButtonWidget(
                              onPressed: () async {
                                await buttonBudgetRecord!.reference
                                    .update(createBudgetRecordData(
                                  food: _model.choiceChipsValue == 'Food'
                                      ? functions.addExpense(
                                          buttonBudgetRecord.food,
                                          double.parse(
                                              _model.amountTextController.text))
                                      : buttonBudgetRecord.food,
                                  housing: _model.choiceChipsValue == 'Housing'
                                      ? functions.addExpense(
                                          buttonBudgetRecord.housing,
                                          double.parse(
                                              _model.amountTextController.text))
                                      : buttonBudgetRecord.housing,
                                  utilities: _model.choiceChipsValue ==
                                          'Utilities'
                                      ? functions.addExpense(
                                          buttonBudgetRecord.utilities,
                                          double.parse(
                                              _model.amountTextController.text))
                                      : buttonBudgetRecord.utilities,
                                  others: _model.choiceChipsValue == 'Others'
                                      ? functions.addExpense(
                                          buttonBudgetRecord.others,
                                          double.parse(
                                              _model.amountTextController.text))
                                      : buttonBudgetRecord.others,
                                ));

                                await TransactionsRecord.collection
                                    .doc()
                                    .set(createTransactionsRecordData(
                                      amount: double.tryParse(
                                          _model.amountTextController.text),
                                      time: getCurrentTimestamp,
                                      uid: currentUserUid,
                                      category: _model.choiceChipsValue,
                                    ));
                                context.safePop();
                              },
                              text: FFLocalizations.of(context).getText(
                                'z7s32rug' /* Add Expense */,
                              ),
                              options: FFButtonOptions(
                                width: 240.0,
                                height: 42.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
