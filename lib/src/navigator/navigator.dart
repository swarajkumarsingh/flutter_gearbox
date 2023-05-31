import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

// Step 1: MaterialApp(
// navigatorKey: navigatorKey,

// Usage --> () => AppRouter.pushNamed("/home-screen")
final appRouter = _AppRouter();

class _AppRouter {
  /// [push]
  ///
  /// [Description]: Push to different screen without BuildContext
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to push
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// push(HomeScreen());
  /// ```
  void push(Widget page) => navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (_) => page),
      );

  /// [pushOFFAll]
  ///
  /// [Description]: pushOFFAll to different screen without BuildContext
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to pushOFFAll
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// push(HomeScreen());
  /// ```
  void pushOFFAll(Widget page) => navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => page),
        (Route<dynamic> route) => false,
      );

  /// [pushNamed]
  ///
  /// [Description]: pushNamed to different screen without BuildContext
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to pushNamed
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// pushNamed(HomeScreen());
  /// ```
  void pushNamed(String routeName) =>
      navigatorKey.currentState?.pushNamed(routeName);

  /// [pop]
  ///
  /// [Description]: pop screen (jump back to previous screen)
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to pop
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// pop(HomeScreen());
  /// ```
  void pop() => navigatorKey.currentState?.pop();
}
