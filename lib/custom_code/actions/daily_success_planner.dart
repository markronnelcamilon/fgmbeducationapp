// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_auth/firebase_auth.dart';

Future dailySuccessPlanner() async {
  // Add your function code here!
  final firestoreInstance = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;
  final uid = firebaseAuth.currentUser.uid.toString();

  var today = DateTime.now();

  for (int i = 0; i <= 364; i++) {
    firestoreInstance.collection("daily_success_planner").add({
      "uid": uid,
      "date": today.add(Duration(days: i)),
      "grateful_for": "",
      "i_thank_god_for": "",
      "daily_affirmation": "",
      "did_win_the_day": false,
      "write_down_goals": false,
      "read_ten_pages": false,
      "target01": false,
      "target02": false,
      "target03": false,
      "target04": false,
      "target05": false,
      "target_detail01": "Tap here to change your target...",
      "target_detail02": "Tap here to change your target...",
      "target_detail03": "Tap here to change your target...",
      "target_detail04": "Tap here to change your target...",
      "target_detail05": "Tap here to change your target...",
      "": "",
    });

    //for (int x = 0; x <= 4; x++) {
    //firestoreInstance.collection('targets').add(
    //{
    //"uid" : uid,
    //"date" : today.add(Duration(days: i)),
    //"target_detail":"Tap here to change your target...",
    //"target_done":false,
    //}
    //);
    //}
  }
}
