import 'package:flutter/material.dart';

class YuanToDollar extends StatefulWidget {
  const YuanToDollar({Key? key});

  @override
  State<YuanToDollar> createState() => _YuanToDollarState();
}

class _YuanToDollarState extends State<YuanToDollar> {
  TextEditingController yuanController = TextEditingController();
  double dollar = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yuan To Dollar Converter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: yuanController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Yuan need to convert',
              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dollar = double.parse(yuanController.text) / 7.09;
                });
              },
              child: Text("Convert"),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Result : " + dollar.toString() + " \$",
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
