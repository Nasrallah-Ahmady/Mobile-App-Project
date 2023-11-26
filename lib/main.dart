import 'package:currencyconverterapp/DollarToEuro.dart';
import 'package:currencyconverterapp/EuroToDollar.dart';
import 'package:currencyconverterapp/dollar_to_lbp.dart';
import 'package:currencyconverterapp/lbp_to_dollar.dart';
import 'package:currencyconverterapp/DollarToYuan.dart';
import 'package:currencyconverterapp/YuanToDollar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverter(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, // Change the color as needed
      ),
    );
  }
}
class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to the Currency Converter App",
          style: TextStyle(fontSize: 50.0, fontStyle: FontStyle.italic, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DollarToLbp()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Change the color as needed
              ),
              child: Text('Dollar To LBP', style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LbpToDollar()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Change the color as needed
              ),
              child: Text('LBP To Dollar', style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),

            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DollarToYuan()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Change the color as needed
              ),
              child: Text("Dollar To Yuan", style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),

            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => YuanToDollar()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Change the color as needed
              ),
              child: Text('Yuan To Dollar', style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),

            SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DollarToEuro()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // Change the color as needed
              ),
              child: Text("Dollar To Euro", style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),

            SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EuroToDollar()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo, // Change the color as needed
              ),
              child: Text("Euro To Dollar", style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
