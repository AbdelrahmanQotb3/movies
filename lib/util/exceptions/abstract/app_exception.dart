import 'package:flutter/material.dart';


abstract class AppException implements Exception {
  String? message;
  int exceptionCode;

  AppException({this.message, this.exceptionCode = -1});

  Widget? createButtons();

  String createErrorMessage();

  Widget? createTitleIcon() => null;

  @override
  String toString() {
    if (message != null && message!.isNotEmpty) {
      return message!;
    } else {
      return runtimeType.toString();
    }
  }
}