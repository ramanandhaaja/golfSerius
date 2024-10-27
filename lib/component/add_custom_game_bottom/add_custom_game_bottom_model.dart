import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_custom_game_bottom_widget.dart' show AddCustomGameBottomWidget;
import 'package:flutter/material.dart';

class AddCustomGameBottomModel
    extends FlutterFlowModel<AddCustomGameBottomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for score widget.
  FocusNode? scoreFocusNode;
  TextEditingController? scoreTextController;
  String? Function(BuildContext, String?)? scoreTextControllerValidator;
  // State field(s) for Winner widget.
  String? winnerValue;
  FormFieldController<String>? winnerValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    scoreFocusNode?.dispose();
    scoreTextController?.dispose();
  }
}
