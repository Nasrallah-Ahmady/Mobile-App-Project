import 'package:flutter/material.dart';

class DollarToYuan extends StatefulWidget {
  const DollarToYuan({Key? key}) : super(key: key);

  @override
  State<DollarToYuan> createState() => _DollarToYuanState();
}

class _DollarToYuanState extends State<DollarToYuan> {
  TextEditingController dollarController = TextEditingController();
  double yuan = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dollar To Yuan Converter'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: dollarController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Dollar need to convert',
              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  yuan = double.parse(dollarController.text) * 7.09;
                });
              },
              child: Text("Convert"),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Result : " + yuan.toString() + " Yuan",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
