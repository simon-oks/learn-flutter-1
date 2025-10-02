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
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 8,
          margin: EdgeInsets.all(18),
          color: Colors.lightGreen.shade200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Mon identité",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Divider(
                thickness: 2,
                indent: 8,
                endIndent: 8,
                color: Colors.lightBlueAccent,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("assets/images/profile-1.jpg"),
                  ),
                  Spacer(),
                  Text(
                    "Simon OKS",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Image.asset("assets/images/android bots.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
