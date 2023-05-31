/// [capitalize getter]
///
/// [Description]: Custom getter extension on String
///
/// [Parameters]: null
///
/// [Return Value]: String
///
/// [Example Usage]:
/// ```dart
///   final name = username.toString().capitalize;
/// ```
///
/// [Additional Notes]: Include any additional information or considerations about the function.
extension StringExtension on String {
  String get capitalize =>
      isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
}
