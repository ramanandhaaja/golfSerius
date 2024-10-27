import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'game_summary_widget.dart' show GameSummaryWidget;
import 'package:flutter/material.dart';

class GameSummaryModel extends FlutterFlowModel<GameSummaryWidget> {
  ///  Local state fields for this page.

  List<UsersRecord> listOfPlayerPageState = [];
  void addToListOfPlayerPageState(UsersRecord item) =>
      listOfPlayerPageState.add(item);
  void removeFromListOfPlayerPageState(UsersRecord item) =>
      listOfPlayerPageState.remove(item);
  void removeAtIndexFromListOfPlayerPageState(int index) =>
      listOfPlayerPageState.removeAt(index);
  void insertAtIndexInListOfPlayerPageState(int index, UsersRecord item) =>
      listOfPlayerPageState.insert(index, item);
  void updateListOfPlayerPageStateAtIndex(
          int index, Function(UsersRecord) updateFn) =>
      listOfPlayerPageState[index] = updateFn(listOfPlayerPageState[index]);

  int holePosition = 1;

  List<ScoresRecord> listScorePageState = [];
  void addToListScorePageState(ScoresRecord item) =>
      listScorePageState.add(item);
  void removeFromListScorePageState(ScoresRecord item) =>
      listScorePageState.remove(item);
  void removeAtIndexFromListScorePageState(int index) =>
      listScorePageState.removeAt(index);
  void insertAtIndexInListScorePageState(int index, ScoresRecord item) =>
      listScorePageState.insert(index, item);
  void updateListScorePageStateAtIndex(
          int index, Function(ScoresRecord) updateFn) =>
      listScorePageState[index] = updateFn(listScorePageState[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in GameSummary widget.
  List<ScoresRecord>? listScoreOutput;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
