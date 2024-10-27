import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'game_main_widget.dart' show GameMainWidget;
import 'package:flutter/material.dart';

class GameMainModel extends FlutterFlowModel<GameMainWidget> {
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

  List<DocumentReference> listOfPlayerRefPageState = [];
  void addToListOfPlayerRefPageState(DocumentReference item) =>
      listOfPlayerRefPageState.add(item);
  void removeFromListOfPlayerRefPageState(DocumentReference item) =>
      listOfPlayerRefPageState.remove(item);
  void removeAtIndexFromListOfPlayerRefPageState(int index) =>
      listOfPlayerRefPageState.removeAt(index);
  void insertAtIndexInListOfPlayerRefPageState(
          int index, DocumentReference item) =>
      listOfPlayerRefPageState.insert(index, item);
  void updateListOfPlayerRefPageStateAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      listOfPlayerRefPageState[index] =
          updateFn(listOfPlayerRefPageState[index]);

  List<UsersRecord> tempPlayerJoinedPageState = [];
  void addToTempPlayerJoinedPageState(UsersRecord item) =>
      tempPlayerJoinedPageState.add(item);
  void removeFromTempPlayerJoinedPageState(UsersRecord item) =>
      tempPlayerJoinedPageState.remove(item);
  void removeAtIndexFromTempPlayerJoinedPageState(int index) =>
      tempPlayerJoinedPageState.removeAt(index);
  void insertAtIndexInTempPlayerJoinedPageState(int index, UsersRecord item) =>
      tempPlayerJoinedPageState.insert(index, item);
  void updateTempPlayerJoinedPageStateAtIndex(
          int index, Function(UsersRecord) updateFn) =>
      tempPlayerJoinedPageState[index] =
          updateFn(tempPlayerJoinedPageState[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in GameMain widget.
  List<UsersRecord>? listOfPlayerOutput;
  // Stores action output result for [Firestore Query - Query a collection] action in GameMain widget.
  List<ScoresRecord>? listScoreOutput;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Card widget.
  List<ScoresRecord>? searchScoreOutputDecrease;
  // Stores action output result for [Firestore Query - Query a collection] action in Card widget.
  List<ScoresRecord>? searchScoreOutputIncrease;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
