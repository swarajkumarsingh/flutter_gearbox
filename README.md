# Flutter GearBox

Fancy container package lets you add a beautiful gradient container to your Flutter app.

## Supported Devices
- Android
- IOS
- Linux
- Windows
- Macos

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  flutter_gearbox: 
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:flutter_gearbox/flutter_gearbox.dart';
```
3. Add Keys in Material App for routing and display snackbar without BuiltContext
```dart
 MaterialApp(
   scaffoldMessengerKey: snackbarKey,
   navigatorKey: navigatorKey,
   ...
 )
```


## Features

- [x] Custom Logger
  - [x] print
  - [x] info
  - [x] verbose
  - [x] wtf
  - [x] debug
  - [x] warning
  - [x] error
- [x] Custom appRouter **without BuiltContext**
  - [x] push
  - [x] pushOFFAll
  - [x] pushNamed
  - [x] pop
- [x] ShowSnackBar **without BuildContext**
  - [x] showSnackBar
- [x] Spaces
  - [x] VerticalSpace
  - [x] HorizontalSpace
- [x] NetworkUtils 
  - [x] isConnectionAvailable
  - [x] performAction
  - [x] listenConnectionStream
- [x] CustomTextField
  - [x] NameTextField
  - [x] SearchTextField
  - [x] EmailTextField
  - [x] PasswordTextField
  - [x] PhoneNumberTextField
- [x] Status Codes
  - [x] statusOk
  - [x] statusNotFound
  - [x] statusInvalidRequest
  - [x] statusInternalServerError
- [x] UrlLauncher
  - [x] launchURL
- [x] Extension
  - [x] string_extension --> capitalize
- [x] Custom Variables
  - [x] isInProduction
  - [x] isDebugMode
- [x] Custom Screens
  - [x] NoInterNetScreen

## Example
### Logger

```
logger.error("My Error Print");
```
### AppRouter **without BuildContext**

```
appRouter.push(HomeScreen());
```
### ShowSnackBar **without BuildContext**

```
showSnackBar(msg: "MOM ❤");
```
### Spacer VerticalSpace

```
VerticalSpace(height: 10);
```
### Spacer HorizontalSpace

```
HorizontalSpace(width: 10);
```
### NetworkUtils

```
final connectionStatus = await networkUtils.isConnectionAvailable();
await networkUtils.performAction();
await networkUtils.listenConnectionStream();
```
### CustomTextField

```
CustomTextField(text: "Enter your name");
```
### Status Code

```
if(res.status == statusOk) {
  ....
}
```
### UrlLauncher

```
await launchURL("google.com")
```
### String Extension

```
String name = username.toString().capitalize;
```
### Custom Debug Variables 

```
if(isInProduction){
  ...Report to crash analysis
}

if(isDebugMode) {
  print("HELLO WORLD");
}
```
### NoInterNetScreen 

```
NoInterNetScreen();
```



## Next Goals
- [x] Added Utility functions(extensions, logger, navigator, network, custom screen, snackbar, spaces, status_code, custom_text_field, url_launcher)
- [ ] More functions to add

## Contributions 
If you find a bug or want a feature, but don't know how to fix/implement it, please fill an issue. <br>
<br>
If you fixed a bug or implemented a feature, please send a pull request.