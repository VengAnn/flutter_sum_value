import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailApp extends StatefulWidget {
  const DetailApp({super.key});

  @override
  State<DetailApp> createState() => _DetailAppState();
}

class _DetailAppState extends State<DetailApp> {
  var textNumber1 = TextEditingController();
  var textNumber2 = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(17),
      child: Column(
        children: [
          //
          _MyTextField(textNumber1),
          //
          _MyTextField(textNumber2),
          //
          SizedBox(
            height: 20,
          ),

          SizedBox(
            height: 15,
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // color: Colors.blue,
                child: CupertinoButton(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                  ),
                  onPressed: _btnClickSum,
                  child: const Text(
                    'Sum',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          //
          Text(
            'Result: $result',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  void _btnClickSum() {
    setState(() {
      var f = NumberFormat('\$#,##0.00');
      double v1 = double.parse(textNumber1.text);
      double v2 = double.parse(textNumber2.text);
      double sum = v1 + v2;
      result = f.format(sum);
    });
  }
}

////////////////
///
Widget _MyTextField(TextEditingController txt) {
  return TextField(
    decoration: const InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    ),
    controller: txt,
    keyboardType: TextInputType.number,
  );
}
