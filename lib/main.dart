import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//↓CountNumber
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List colors = [
    Colors.black26,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.orange,
    Colors.amber,
    Colors.lightGreen,
    Colors.greenAccent,
    Colors.teal,
    Colors.cyan,
    Colors.lightBlue,
    Colors.indigo,
    Colors.brown,
  ];

  Random random = new Random();
  int index = 0;
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;
  int index6 = 0;
  int index7 = 0;
  int index8 = 0;
  int index9 = 0;
  int index0 = 0;

  double opacityLevel = 1.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void changeIndex() {
    setState(() {
      index = random.nextInt(16);
      while (index == index1) {
        index = random.nextInt(16);
        if (index != index1) {
          break;
        }
      }

      if (_counter % 10 == 1 || _counter == 1) {
        index1 = index;
      } else if (_counter % 10 == 2 || _counter == 2) {
        index2 = index1;
      } else if (_counter % 10 == 3 || _counter == 3) {
        index3 = index1;
      } else if (_counter % 10 == 4 || _counter == 4) {
        index4 = index1;
      } else if (_counter % 10 == 5 || _counter == 5) {
        index5 = index1;
      } else if (_counter % 10 == 6 || _counter == 6) {
        index6 = index1;
      } else if (_counter % 10 == 7 || _counter == 7) {
        index7 = index1;
      } else if (_counter % 10 == 8 || _counter == 8) {
        index8 = index1;
      } else if (_counter % 10 == 9 || _counter == 9) {
        index9 = index1;
      } else if (_counter % 10 == 0) {
        index0 = index1;
      }
    });
  }

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0.5 ? 1.0 : 0.5);
  }

  double _padding = 5;
  // ignore: non_constant_identifier_names
  void _Tap() {
    setState(() => _padding = _padding == 3.5 ? 0 : 3.5);
  }

  // ignore: non_constant_identifier_names
  void _ActionSheet() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
//            title: const Text('説明文表示'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: const Text('Reset'),
                onPressed: _reset,
                isDestructiveAction: true,
              ),

            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text('Cancel'),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
            ));
      },);
  }

  void _reset() {
    setState(() => _counter=0);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Container(
          color: colors[index0].withOpacity(0.2),
          child: Stack(
            children: <Widget>[
              AnimatedPadding(
                padding: EdgeInsets.all(_padding),
                duration: Duration(seconds: 1),
                child: Container(
                  color: colors[index0].withOpacity(0.2),
                  margin: EdgeInsets.all(0),
                  child: AnimatedPadding(
                    padding: EdgeInsets.all(_padding),
                    duration: Duration(seconds: 1),
                    child: Container(
                      color: colors[index9].withOpacity(0.2),
                      margin: EdgeInsets.only(
                          top: size.height / 20,
                          bottom: size.height / 20,
                          right: size.width / 20,
                          left: size.width / 20),
                      child: AnimatedPadding(
                        padding: EdgeInsets.all(_padding),
                        duration: Duration(seconds: 1),
                        child: Container(
                          color: colors[index8].withOpacity(0.2),
                          margin: EdgeInsets.only(
                              top: size.height / 20,
                              bottom: size.height / 20,
                              right: size.width / 20,
                              left: size.width / 20),
                          child: AnimatedPadding(
                            padding: EdgeInsets.all(_padding),
                            duration: Duration(seconds: 1),
                            child: Container(
                              color: colors[index7].withOpacity(0.2),
                              margin: EdgeInsets.only(
                                  top: size.height / 20,
                                  bottom: size.height / 20,
                                  right: size.width / 20,
                                  left: size.width / 20),
                              child: AnimatedPadding(
                                padding: EdgeInsets.all(_padding),
                                duration: Duration(seconds: 1),
                                child: Container(
                                  color: colors[index6].withOpacity(0.2),
                                  margin: EdgeInsets.only(
                                      top: size.height / 20,
                                      bottom: size.height / 20,
                                      right: size.width / 20,
                                      left: size.width / 20),
                                  child: AnimatedPadding(
                                    padding: EdgeInsets.all(_padding),
                                    duration: Duration(seconds: 1),
                                    child: Container(
                                      color: colors[index5].withOpacity(0.2),
                                      margin: EdgeInsets.only(
                                          top: size.height / 20,
                                          bottom: size.height / 20,
                                          right: size.width / 20,
                                          left: size.width / 20),
                                      child: AnimatedPadding(
                                        padding: EdgeInsets.all(_padding),
                                        duration: Duration(seconds: 1),
                                        child: Container(
                                          color: colors[index4].withOpacity(0.2),
                                          margin: EdgeInsets.only(
                                              top: size.height / 20,
                                              bottom: size.height / 20,
                                              right: size.width / 20,
                                              left: size.width / 20),
                                          child: AnimatedPadding(
                                            padding: EdgeInsets.all(_padding),
                                            duration: Duration(seconds: 1),
                                            child: Container(
                                              color: colors[index3].withOpacity(0.2),
                                              margin: EdgeInsets.only(
                                                  top: size.height / 20,
                                                  bottom: size.height / 20,
                                                  right: size.width / 20,
                                                  left: size.width / 20),
                                              child: AnimatedPadding(
                                                padding: EdgeInsets.all(_padding),
                                                duration: Duration(seconds: 1),
                                                child: Container(
                                                  color: colors[index2].withOpacity(0.2),
                                                  margin: EdgeInsets.only(
                                                      top: size.height / 20,
                                                      bottom: size.height / 20,
                                                      right: size.width / 20,
                                                      left: size.width / 20),
                                                  child: AnimatedPadding(
                                                    padding: EdgeInsets.all(_padding),
                                                    duration: Duration(seconds: 1),
                                                    child: Container(
                                                      color: colors[index1].withOpacity(0.2),
                                                      margin: EdgeInsets.only(
                                                          top: size.height / 20,
                                                          bottom: size.height / 20,
                                                          right: size.width / 20,
                                                          left: size.width / 20),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: AnimatedOpacity(
                  opacity: opacityLevel,
                  duration: Duration(seconds: 1),
                  child: Text(
                    '$_counter',
                    style: TextStyle(
                        fontSize: 65,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          iconSize: 35,
                          onPressed: _ActionSheet,
                          color: Colors.black38,
                          icon: Icon(Icons.cancel),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          _incrementCounter();
          changeIndex();
          _changeOpacity();
          _Tap();
        },
      ),
    );
  }
}
