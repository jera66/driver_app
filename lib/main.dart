import 'package:flutter/material.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      child: MaterialApp(
        title: 'Driver App',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        // home: Scaffold(appBar: AppBar(title: Text("Welcome to the driver app"),),),
        debugShowCheckedModeBanner: false,
      )
    )
  );
}

class MyApp extends StatefulWidget {
  final Widget? child;

  MyApp({this.child});

  static void restartApp(BuildContext context)
  {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp;
  }
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Key key = UniqueKey();
  void restartApp()
  {
    setState(() {
      key = UniqueKey();
    });
  }
  @override
  Widget build(BuildContext context) {
    return  KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}

