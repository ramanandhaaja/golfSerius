import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_detail_custom_score_widget.dart' show UserDetailCustomScoreWidget;
import 'package:flutter/material.dart';

class UserDetailCustomScoreModel
    extends FlutterFlowModel<UserDetailCustomScoreWidget> {
  ///  Local state fields for this component.

  List<CustomGameScoresRecord> customScoreListState = [];
  void addToCustomScoreListState(CustomGameScoresRecord item) =>
      customScoreListState.add(item);
  void removeFromCustomScoreListState(CustomGameScoresRecord item) =>
      customScoreListState.remove(item);
  void removeAtIndexFromCustomScoreListState(int index) =>
      customScoreListState.removeAt(index);
  void insertAtIndexInCustomScoreListState(
          int index, CustomGameScoresRecord item) =>
      customScoreListState.insert(index, item);
  void updateCustomScoreListStateAtIndex(
          int index, Function(CustomGameScoresRecord) updateFn) =>
      customScoreListState[index] = updateFn(customScoreListState[index]);

  int? numOfScore = 0;

  int? intScore;

  int? totalScore = 0;

  bool visibility = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in userDetailCustomScore widget.
  List<CustomGameScoresRecord>? customScoreListActionOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
