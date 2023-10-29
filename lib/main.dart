import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // WakelockPlus.enable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preventing Sleep Mode Flutter Template Geeks For Geeks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            'Preventing Sleep Mode Flutter Template Geeks For Geeks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    //To enable the awake mode
                    WakelockPlus.enable();
                  },
                  child: const Text("Wakelock Enable")),
              const Text(
                "After Tapping previous button this device will not go in sleep mode either there is some activity or not",
                style: TextStyle(fontSize: 22),
              ),
              ElevatedButton(
                  onPressed: () {
                    //To disble the sleep mode
                    WakelockPlus.disable();
                  },
                  child: const Text("Wakelock Disable")),
              const Text(
                "After Tapping previous button this device will go in sleep mode if there is no activity for particular time which is set in your settings",
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
        ),
      ),
    );
  }
}
