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
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),
        actions: [Icon(Icons.person), Icon(Icons.access_time)],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(24),
          child: Text("Salut les codeurs"),
        ),
        // backgroundColor: Colors.blue,
        elevation: 8,
        centerTitle: true,
      ),
      body: const Center(
        child: FlutterLogo(size: 128, style: FlutterLogoStyle.stacked),
      ),
    );
  }
}
