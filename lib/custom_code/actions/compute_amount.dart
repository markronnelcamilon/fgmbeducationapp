// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future computeAmount(
  double? checkingAccount,
  double? percentage,
) async {
  var total = 0.0;
  total = checkingAccount! * (percentage! * .01);
  return total;
}
