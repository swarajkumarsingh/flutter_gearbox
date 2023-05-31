import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gearbox/src/screens/no_connection_screen.dart';
import 'package:flutter_gearbox/src/snackbar/snackbar.dart';

import '../navigator/navigator.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final networkUtils = _NetworkUtils();

class _NetworkUtils {
  Future<bool> isConnectionAvailable() async {
    bool result = await InternetConnectionChecker().hasConnection;
    return result;
  }

  Future<void> performAction({Widget? desiredScreen}) async {
    bool connectionStatus = await isConnectionAvailable();
    if (connectionStatus == false) {
      showSnackBar(msg: "No Internet Connection");
    } else {
      desiredScreen == null ? appRouter.pop() : appRouter.push(desiredScreen);
    }
  }

  Future<void> listenConnectionStream(
      {Widget page = const NoInterNetScreen()}) async {
    InternetConnectionChecker().onStatusChange.listen((event) {
      if (event == InternetConnectionStatus.disconnected) {
        appRouter.push(page);
      } else {
        appRouter.pop();
      }
    });
  }
}
