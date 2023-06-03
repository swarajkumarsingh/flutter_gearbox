import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

// Step 1: MaterialApp(
//    scaffoldMessengerKey: snackbarKey

// Step 2: () => showSnackBar()

/// [showSnackBar]
///
/// [Description]: showSnackBar without BuildContext
///
/// [Parameters]:
/// - [String msg]: Message to display
///
/// [Return Value]: null
///
/// [Example Usage]:
/// ```dart
/// showSnackBar(msg: "Snack bar");
/// ```
void showSnackBar({String msg = "Unexpected error occurred"}) {
  try {
    final SnackBar snackBar = SnackBar(content: Text(msg));
    snackbarKey.currentState?.showSnackBar(snackBar);
  } catch (e) {
    UnimplementedError(e.toString());
  }
}
