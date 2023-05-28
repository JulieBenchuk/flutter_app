import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.yellow,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  letterSpacing: 1,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87)),
          scaffoldBackgroundColor: Colors.black87,
          primarySwatch: Colors.lightGreen,
          dividerColor: Colors.white30,
          listTileTheme: const ListTileThemeData(iconColor: Colors.white),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),
            bodySmall: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          )),
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
          title: const Text("Home page"),
        ),
        body: ListView.separated(
          itemCount: 7,
          separatorBuilder: (context, i) => const Divider(),
          itemBuilder: (context, i) => ListTile(
            leading: SvgPicture.asset(
              'assets/svg/bitcoin.svg',
              width: 30,
              height: 30,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            title:
                Text('Bitcoin', style: Theme.of(context).textTheme.bodyMedium),
            subtitle: Text(
              '10 000\$',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ));
  }
}
