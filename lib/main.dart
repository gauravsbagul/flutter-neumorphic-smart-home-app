import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_home_app/design.dart';

import 'input_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFFE6EbF2),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(brightness: Brightness.light),
      ),
      home: MySmartome(),
    );
  }
}

class MySmartome extends StatefulWidget {
  @override
  _MySmartomeState createState() => _MySmartomeState();
}

class _MySmartomeState extends State<MySmartome> {
  String inputBoxString = '';
  double result;

  void buttonPressed(dynamic value) {
    print('buttonPressed: ${value.runtimeType}');

    // setState(() {
    //   inputBoxString = inputBoxString + value.toString();
    // });
    switch (value) {
      // case '+':
      //   result = result + value.toDouble();
      //   break;
      // case '-':
      //   result = result - value.toDouble();
      //   break;
      // case 'X':
      //   result = result * value.toDouble();
      //   break;
      // case '/':
      //   result = result / value.toDouble();
      //   break;
      // case '=':
      //   break;
      case 'C':
        setState(() {
          inputBoxString = '';
        });
        break;
      default:
        setState(() {
          inputBoxString = inputBoxString + value.toString();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    print('VALinputBoxStringUE: $inputBoxString');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Neumorphic Calculator',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(2, 2),
                  color: Colors.blue.withOpacity(.5),
                ),
                BoxShadow(
                  blurRadius: 3.0,
                  offset: Offset(-2, -2),
                  color: Colors.white.withOpacity(.15),
                ),
              ]),
        ),
        backgroundColor: Color(0xFFE6EbF2),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE6EBF2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconList(inputBoxString: inputBoxString),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Design(
                  item: 7,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  item: 8,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  item: 9,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  color: Colors.black,
                  buttonPressed: buttonPressed,
                  item: '+',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Design(
                  item: 4,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  item: 5,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  item: 6,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  color: Colors.black,
                  item: '-',
                  buttonPressed: buttonPressed,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Design(
                  item: 1,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  item: 2,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  item: 3,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  color: Colors.black,
                  item: 'X',
                  buttonPressed: buttonPressed,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Design(
                  color: Colors.red,
                  item: 'C',
                  buttonPressed: buttonPressed,
                ),
                Design(
                  item: 0,
                  buttonPressed: buttonPressed,
                ),
                Design(
                  color: Colors.black,
                  item: '=',
                  buttonPressed: buttonPressed,
                ),
                Design(
                  color: Colors.black,
                  item: '/',
                  buttonPressed: buttonPressed,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
