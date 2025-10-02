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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Salut les codeurs"),
          Divider(
            height: 128,
            thickness: 4,
            indent: 12,
            endIndent: 64,
            color: Colors.deepPurpleAccent,
          ),
          Row(
            children: [
              SizedBox(width: 12),
              Icon(Icons.house),
              SizedBox(
                height: 45,
                child: VerticalDivider(color: Colors.amber, thickness: 6),
              ),
              Spacer(),
              Text("Text dans une Row"),
              SizedBox(width: 8),
            ],
          ),
          Spacer(flex: 3),
          Container(color: Colors.red, height: 32),
          Icon(Icons.add_a_photo, color: Colors.orange),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
