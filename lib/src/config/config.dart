// Custom Variable to check if the app is in production mode
final bool isInProduction = isDebugMode == false ? false : true;

// Custom Variable to check if the app is in debug mode
bool get isDebugMode {
  bool value = false;
  assert(() {
    value = true;
    return true;
  }());
  return value;
}
