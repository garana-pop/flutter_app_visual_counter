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
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.purple,
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



  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void changeIndex() {
    setState(() {
      index = random.nextInt(5);
      while(index==index1){
        index = random.nextInt(5);
        if(index!=index1){break;}}

      if(_counter%10==1 || _counter==1) {index1 = index;}
      else if(_counter%10==2 || _counter==2){index2 = index1;}
      else if(_counter%10==3 || _counter==3){index3 = index1;}
      else if(_counter%10==4 || _counter==4){index4 = index1;}
      else if(_counter%10==5 || _counter==5){index5 = index1;}
      else if(_counter%10==6 || _counter==6){index6 = index1;}
      else if(_counter%10==7 || _counter==7){index7 = index1;}
      else if(_counter%10==8 || _counter==8){index8 = index1;}
      else if(_counter%10==9 || _counter==9){index9 = index1;}
      else if(_counter%10==0){index0 = index1;}
    });
  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Stack(
          children: <Widget>[
            Container(
              color: colors[index0],
              margin: EdgeInsets.all(0),
              child: Container(
                color: colors[index9],
                margin: EdgeInsets.only(
                    top: size.height / 20,
                    bottom: size.height / 20,
                    right: size.width / 20,
                    left: size.width / 20),
                child: Container(
                  color: colors[index8],
                  margin: EdgeInsets.only(
                      top: size.height / 20,
                      bottom: size.height / 20,
                      right: size.width / 20,
                      left: size.width / 20),
                  child: Container(
                    color: colors[index7],
                    margin: EdgeInsets.only(
                        top: size.height / 20,
                        bottom: size.height / 20,
                        right: size.width / 20,
                        left: size.width / 20),
                    child: Container(
                      color: colors[index6],
                      margin: EdgeInsets.only(
                          top: size.height / 20,
                          bottom: size.height / 20,
                          right: size.width / 20,
                          left: size.width / 20),
                      child: Container(
                        color: colors[index5],
                        margin: EdgeInsets.only(
                            top: size.height / 20,
                            bottom: size.height / 20,
                            right: size.width / 20,
                            left: size.width / 20),
                        child: Container(
                          color: colors[index4],
                          margin: EdgeInsets.only(
                              top: size.height / 20,
                              bottom: size.height / 20,
                              right: size.width / 20,
                              left: size.width / 20),
                          child: Container(
                            color: colors[index3],
                            margin: EdgeInsets.only(
                                top: size.height / 20,
                                bottom: size.height / 20,
                                right: size.width / 20,
                                left: size.width / 20),
                            child: Container(
                              color: colors[index2],
                              margin: EdgeInsets.only(
                                  top: size.height / 20,
                                  bottom: size.height / 20,
                                  right: size.width / 20,
                                  left: size.width / 20),
                              child: Container(
                                color: colors[index1],
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
            Center(
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 80,color: Colors.white),
              ),
            ),
          ],
        ),
        onTap: () {
          _incrementCounter();
          changeIndex();
        },
      ),
    );
  }
}


