import 'package:bnbl/core/models/app_exception.dart';
import 'package:bnbl/core/modules/toast_utils.dart';
import 'package:flutter/widgets.dart';

mixin ErrorStateMixin<Page extends StatefulWidget> on State<Page> {
  void handleErrors(AppExceptions exception, {Function()? action}) {
    if (exception is NetworkException) {
      exception.maybeWhen(
        noInternetConnection: () {
          showToast("No Internet Connection");
        },
        unauthorisedRequest: (String? message) {
          if (message != null) showToast(message);
        },
        businessError: (String? error, String? code) {
          if (error != null) showToast(error);
        },
        orElse: () {},
      );
    } else {}
  }
}
