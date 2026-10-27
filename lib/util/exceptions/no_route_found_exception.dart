import 'package:flutter/material.dart';
import 'package:movies/util/exceptions/abstract/app_exception.dart';

class NoRouteFoundException extends AppException {
  @override
  Widget? createButtons() {
    return null;
  }

  @override
  String createErrorMessage() {
    return 'No Route Found Exception';
  }
}