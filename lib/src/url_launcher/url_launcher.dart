import 'package:url_launcher/url_launcher.dart';

final urlLauncher = _UrlLauncher();

class _UrlLauncher {
  /// [launchURL]
  ///
  /// [Description]: launch url from flutter app direct
  ///
  /// [Parameters]:
  /// - [String url]: Url to be launched
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// launchURL(param1: value1, param2: value2);
  /// ```
  ///
  /// [Additional Notes]: Include any additional information or considerations about the function.
  Future<void> launchURL(String url) async {
    final Uri url0 = Uri.parse(url);
    if (!await launchUrl(url0)) {
      throw Exception('Could not launch $url0');
    }
  }
}
