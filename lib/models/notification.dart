import 'package:flutter/material.dart';

class Notification {
  final DateTime timeSent;
  final String title;
  final String message;

  Notification(this.timeSent, this.title, this.message);
}