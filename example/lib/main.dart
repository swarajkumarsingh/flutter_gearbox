import 'package:example/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gearbox/flutter_gearbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    /// [networkUtils.listenConnectionStream(Widget page) - listenToStream and perform push and pop based on the connectionStatus]
    await networkUtils.listenConnectionStream();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GearBox Example',
      scaffoldMessengerKey: snackbarKey,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final controller = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    /// [isDebugMode] && [logger.error(value)]
    if (isDebugMode) logger.error(_counter);

    /// [showSnackBar] without BuildContext with pure Flutter & Dart Code.
    showSnackBar(msg: "MOM 💕💕");
  }

  Future<void> launchUrl() async {
    /// [launchURL - launch url from flutter app]
    await urlLauncher.launchURL(url: "https://github.com/swarajkumarsingh");
  }

  void pushToHomeScreen() {
    /// [appRouter.push(Widget page) - push to screen without BuiltContext]
    appRouter.push(
      HomeScreen(
        /// [capitalize - function to capitalize the first letter]
        text: "${controller.text.capitalize} Happy Coding",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: pushToHomeScreen,
            icon: const Icon(Icons.home),
          ),
          IconButton(
              onPressed: () async => await launchUrl(),
              icon: const Icon(Icons.person))
        ],
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            /// [VerticalSpace - Create vertical height]
            const VerticalSpace(height: 10),

            /// [NameTextField - with pre-defined properties]
            NameTextField(text: "Enter your name", controller: controller),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
