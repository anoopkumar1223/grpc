import 'package:flutter/material.dart';
import 'package:grpcapp/service/calculator_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = '';

  Future<void> addNumbers() async {
    var result = await CalculatorService.add(10, 20);
    setState(() {
      message = 'Server responds addition of 10 and 20 is ' +
          result.result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('GRPC POC APP'),
          ),
          body: Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('request'),
                      onPressed: () {
                        addNumbers();
                      },
                    ),
                    Text(message),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
