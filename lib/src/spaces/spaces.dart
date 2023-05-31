import 'package:flutter/material.dart';

/// [VerticalSpace]
///
/// [Description]: SizedBox of certain height
///
/// [Parameters]:
/// - [int height]: Height for the SizedBox
///    ...
///
/// [Return Value]: Widget
///
/// [Example Usage]:
/// ```dart
/// VerticalSpace(height: 10),
/// ```
///
/// [Additional Notes]: This is just a wrapper around sizedbox
class VerticalSpace extends StatelessWidget {
  const VerticalSpace({super.key, this.height = 10});
  final int height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.toDouble(),
    );
  }
}

/// [HorizontalSpace]
///
/// [Description]: SizedBox of certain height
///
/// [Parameters]:
/// - [int height]: Height for the SizedBox
///    ...
///
/// [Return Value]: Widget
///
/// [Example Usage]:
/// ```dart
/// HorizontalSpace(height: 10),
/// ```
///
/// [Additional Notes]: This is just a wrapper around sizedbox
class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({super.key, this.width = 10});
  final int width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.toDouble(),
    );
  }
}
