import 'package:flutter/material.dart';
import 'package:noticeit/home.dart';
import 'package:noticeit/screens/homePage.dart';
import './story/story_detail_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NoticeIt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print('something went wrong ');
          print(snapshot.error);
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            theme: ThemeData(
                //primaryColor: Color.fromARGB(255,246, 231, 216),
                scaffoldBackgroundColor: Color.fromARGB(255, 255, 251, 233),
                textTheme: TextTheme(
                    bodyText2: TextStyle(
                  color: Color.fromARGB(
                    255,
                    35,
                    64,
                    153,
                  ),
                ))),
            initialRoute: '/',
            routes: {
              '/': (ctx) => Home(),
              //StoryDetailScreen.routeName : (ctx) => StoryDetailScreen(),
              // '/': (ctx) => HomePage(),
            },
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
