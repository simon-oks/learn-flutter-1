import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(appTitle: "Les widgets basiques"));
}

class MyApp extends StatelessWidget {
  final String appTitle;
  const MyApp({super.key, required this.appTitle});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 64,
              // margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.lightGreenAccent,
              ),
              child: Text("Avons-nous un problème de lectuer ?"),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightGreen],
                    begin: Alignment.topCenter,
                  ),
                ),
                child: Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  alignment: WrapAlignment.start,
                  children: [
                    Container(color: Colors.green, height: 54, width: 128),
                    Container(color: Colors.redAccent, height: 54, width: 228),
                    Container(color: Colors.orange, height: 54, width: 100),
                    Container(color: Colors.black54, height: 54, width: 128),
                    Container(color: Colors.pinkAccent, height: 54, width: 128),
                    Container(color: Colors.white, height: 54, width: 56),
                    Expanded(child: Container(color: Colors.lime, height: 54)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
