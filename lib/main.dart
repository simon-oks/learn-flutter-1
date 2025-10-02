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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            customRow(
              title: "Une journée chez Android",
              asset: "assets/images/android bots.jpg",
              context: context,
            ),
            customRow(
              title: "Profile 1",
              asset: "assets/images/profile-1.jpg",
              context: context,
            ),
            customRow(
              title: "Profile 2",
              asset: "assets/images/profile-2.jpg",
              context: context,
            ),
            customRow(
              title: "Profile 3",
              asset: "assets/images/profile-3.jpg",
              context: context,
            ),
            customRow(
              title: "Profile 4",
              asset: "assets/images/profile-4.jpg",
              context: context,
            ),
            customRow(
              title: "Profile 5",
              asset: "assets/images/profile-5.jpg",
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Padding customRow({
    required String title,
    required String asset,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(radius: 34, backgroundImage: AssetImage(asset)),
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          Icon(Icons.send, color: Colors.white),
        ],
      ),
    );
  }
}
