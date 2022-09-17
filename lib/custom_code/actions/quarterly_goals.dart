// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_auth/firebase_auth.dart';

Future quarterlyGoals() async {
  // Add your function code here!
  final firestoreInstance = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;
  final uid = firebaseAuth.currentUser!.uid.toString();

  for (int i = 1; i <= 4; i++) {
    firestoreInstance.collection("quarterly_goals").add({
      "uid": uid,
      "quarter": i,
      "label": "Quarter $i",
      "goals": "",
    });
  }
}
