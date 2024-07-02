import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double percentageValue(
  double amount,
  double spend1,
  double spend2,
  double spend3,
  double spend4,
) {
  return amount / (spend1 + spend2 + spend3 + spend4);
}

double totalSpends(
  double food,
  double housing,
  double utilities,
  double others,
) {
  return food + housing + utilities + others;
}

double spendPercentageAbsolute(
  double totalSpend,
  double budget,
) {
  double percentage = totalSpend / budget;

  if (percentage > 1) {
    return 1;
  }

  return percentage;
}

double spendPercentage(
  double totalSpend,
  double budget,
) {
  return (totalSpend / budget);
}

double addExpense(
  double previousExpense,
  double newExpense,
) {
  return previousExpense + newExpense;
}
