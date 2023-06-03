import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gearbox/src/screens/no_connection_screen.dart';
import 'package:flutter_gearbox/src/snackbar/snackbar.dart';

import '../navigator/navigator.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final networkUtils = _NetworkUtils();

class _NetworkUtils {
  /// [isConnectionAvailable]
  ///
  /// [Description]: returns true of false based on user's connectionStatus
  ///
  /// [Parameters]: null
  ///
  /// [Return Value]: bool
  ///
  /// [Example Usage]:
  /// ```dart
  /// final connectionStatus = await networkUtils.isConnectionAvailable();
  /// ```
  ///
  /// [Additional Notes]: Wrap the function in async function
  Future<bool> isConnectionAvailable() async {
    try {
      bool result = await InternetConnectionChecker().hasConnection;
      return result;
    } catch (e) {
      Future.error("error checking user's connection status");
    }

    return false;
  }

  /// [performAction]
  ///
  /// [Description]: performAction based on user's connectionStatus
  ///
  /// [Parameters]: Widget? desiredScreen, after user regained it's connectionStatus, which screen should be displayed
  ///
  /// [Return Value]: bool
  ///
  /// [Example Usage]:
  /// ```dart
  /// () async => await performAction(desiredScreen: HomeScreen());
  /// ```
  ///
  /// [Additional Notes]: Wrap the function in async function
  Future<void> performAction({Widget? desiredScreen}) async {
    try {
      bool connectionStatus = await isConnectionAvailable();
      if (connectionStatus == false) {
        showSnackBar(msg: "No Internet Connection");
      } else {
        desiredScreen == null ? appRouter.pop() : appRouter.push(desiredScreen);
      }
    } catch (e) {
      Future.error("error performAction on user's connection status");
    }
  }

  /// [listenConnectionStream]
  ///
  /// [Description]: listen to user's connectionStatus, and push pop based on it.
  ///
  /// [Parameters]: Define a custom noInternetScreen, if you don't like the default one.
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// await networkUtils.listenConnectionStream();
  /// ```
  ///
  /// [Additional Notes]: Wrap the function in async function
  Future<void> listenConnectionStream(
      {Widget page = const NoInterNetScreen()}) async {
    try {
      InternetConnectionChecker().onStatusChange.listen((event) {
        if (event == InternetConnectionStatus.disconnected) {
          appRouter.push(page);
        } else {
          appRouter.pop();
        }
      });
    } catch (e) {
      Future.error("error listening to user' connection");
    }
  }
}
