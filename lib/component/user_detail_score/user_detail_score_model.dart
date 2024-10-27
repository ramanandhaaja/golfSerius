import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_detail_score_widget.dart' show UserDetailScoreWidget;
import 'package:flutter/material.dart';

class UserDetailScoreModel extends FlutterFlowModel<UserDetailScoreWidget> {
  ///  Local state fields for this component.

  bool visibility = false;

  List<ScoresRecord> scoreListState = [];
  void addToScoreListState(ScoresRecord item) => scoreListState.add(item);
  void removeFromScoreListState(ScoresRecord item) =>
      scoreListState.remove(item);
  void removeAtIndexFromScoreListState(int index) =>
      scoreListState.removeAt(index);
  void insertAtIndexInScoreListState(int index, ScoresRecord item) =>
      scoreListState.insert(index, item);
  void updateScoreListStateAtIndex(
          int index, Function(ScoresRecord) updateFn) =>
      scoreListState[index] = updateFn(scoreListState[index]);

  int? numOfScore = 0;

  int? totalScore = 0;

  int? intScore = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in userDetailScore widget.
  List<ScoresRecord>? scoreListActionOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
