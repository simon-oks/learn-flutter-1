import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Salut ",
            style: GoogleFonts.laBelleAurore(color: Colors.red, fontSize: 32),
            children: <TextSpan>[
              TextSpan(
                text: "Les Flutteristes",
                style: GoogleFonts.aBeeZee(color: Colors.blue),
              ),
              TextSpan(
                text: " !",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
