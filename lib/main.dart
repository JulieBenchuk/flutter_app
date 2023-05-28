import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoCurrencyListAPP());
}

class CryptoCurrencyListAPP extends StatelessWidget {
  const CryptoCurrencyListAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crypto Currency App",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        primarySwatch: Colors.lightGreen,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white60, fontWeight: FontWeight.w500, fontSize: 20),
          bodySmall: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10),
        )
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
          title: const Center(
              child: Text(
            "Home Page",
          )),
        ),
        body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, i) => ListTile(
            title: Text('Bitcoin', style: Theme.of(context).textTheme.bodyMedium),
            subtitle: Text('10 000\$', style: Theme.of(context).textTheme.bodySmall,),
          ),
        ));
  }
}
