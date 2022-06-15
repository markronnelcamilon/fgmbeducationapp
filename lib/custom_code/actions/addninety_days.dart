// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_auth/firebase_auth.dart';

Future addninetyDays() async {
  // Add your function code here!
  final firestoreInstance = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;
  final uid = firebaseAuth.currentUser.uid.toString();

  var today = DateTime.now();
  final DateFormat formatter = DateFormat('M/d/y');
  final String formatted = formatter.format(today);

  var arr = [
    'Wrote down my goals',
    'Wrote down my quarterly goals',
    'Read 10 pages of a book',
    'Completed all 5 Tasks',
    'Create an IG Post \n#FGMBChallenge \n#WinTheDay \n#21DayChallenge \n@fgmhub'
  ];

  for (int i = 1; i <= 90; i++) {
    firestoreInstance.collection("dayChallenge21").add({
      "dayChallengeID": uid + formatted,
      "uid": uid,
      "day": "Day $i",
      "label": i,
      "date": today.add(Duration(days: i)),
      "completed": false,
      "task1": false,
      "task2": false,
      "task3": false,
      "task4": false,
      "task5": false,
      "ninetyDays": true
    });

    for (int x = 0; x <= 4; x++) {
      var y = x + 1;
      firestoreInstance.collection('task21').add({
        "dayChallengeID": uid + formatted,
        "uid": uid,
        "subscription_name": "21 Days Challenge",
        "task$y": false,
        "day": "Day $i",
        "label": y,
        "taskName": arr[x],
      });
    }
  }
}
