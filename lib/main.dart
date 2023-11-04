import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:heavydutyapp/routes.dart';
import 'package:heavydutyapp/screens/home/home.dart';
import 'package:heavydutyapp/theme.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
              return Scaffold(
                body: Center(
                  child: Text('Firebase initialization error: ${snapshot.error}'),
                ),
              );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            // Once complete, show your application
            return const HomeScreen();
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return const CircularProgressIndicator(); // or any other loading indicator
        },
      ),
      routes: appRoutes,
      theme: appTheme,
    );
  }
}