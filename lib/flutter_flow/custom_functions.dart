import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int likes(UserPostRecord? post) {
  var post;
  return post!.likes.length;
}

bool hasUploadedMedia(String? mediaPath) {
  return mediaPath != null && mediaPath.isNotEmpty;
}

DateTime endDate21() {
  var today = DateTime.now();
  var newDate = DateTime(today.year, today.month, today.day + 21);

  return newDate;
}

DateTime endDate90() {
  var today = DateTime.now();
  var newDate = DateTime(today.year, today.month, today.day + 90);

  return newDate;
}

List<int> listOf21() {
  return [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21
  ];
}

double getProgress(int? percentage) {
  return percentage! / 21;
}

double getProgress90(int? percentage) {
  return percentage! / 90;
}

double endOfDayBalance(
  double? balance,
  double? totalSpending,
) {
  var endOfDay = balance! - totalSpending!;
  return endOfDay;
}

double addToTotalSpeding(
  double? totalSpending,
  double? value,
) {
  var total = totalSpending! + value!;
  return total;
}

double addValueToSpendingNeeds(
  double? spendingNeeds,
  double? amount,
) {
  var total = spendingNeeds! + amount!;
  return total;
}

double profit(double? allocation) {
  var total = allocation! * .1;
  return total;
}

bool showCompleteButton(
  bool? task01,
  bool? task02,
  bool? task03,
  bool? task04,
  bool? task05,
  bool? result,
) {
  var result = true;
  if ((task01 == true) &&
      (task02 == true) &&
      (task03 == true) &&
      (task04 == true) &&
      (task05 == true)) {}
  return result;
}

double percentageAmount(
  double? checkingAmount,
  double? percentage,
  double? total,
) {
  total = (percentage! * 0.01) * checkingAmount!;
  return total; // Add your function code here!
}

double addMoneyToTotal(
  double? amount,
  double? previousAmount,
) {
  var total = amount! + previousAmount!;
  return total;
}

double addMoneyToTotalBusiness(
  double? amount,
  double? previousAmount,
) {
  var total = amount! + previousAmount!;
  return total;
}

DateTime storyEndAt(DateTime? dateNow) {
  // add 24 hours to current day and time
  return DateTime(dateNow!.year, dateNow.month, dateNow.day + 1, dateNow.hour,
      dateNow.minute);
}

bool myDay(DateTime? endDate) {
  // true if date and time is equal to current day and time
  var date = new DateTime.now();
  return date.day == endDate!.day &&
      date.month == endDate.month &&
      date.year == endDate.year &&
      date.hour == endDate.hour;
}

bool myDayCondition(DateTime? currentTime) {
  // return true if the time is not yet pass
  var day = DateTime(currentTime!.year, currentTime.month, currentTime.day);
  return day.difference(DateTime.now()) < Duration(days: 1);
}
