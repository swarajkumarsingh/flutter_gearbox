final bool isInProduction = isDebugMode == false ? false : true;

bool get isDebugMode {
  bool value = false;
  assert(() {
    value = true;
    return true;
  }());
  return value;
}
