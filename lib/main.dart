import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'datePicker.dart';

void main() {
  runApp(new ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About ME',
      theme:
          ThemeData(primarySwatch: Colors.red, backgroundColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'About Me',
          style: TextStyle(color: Colors.red),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.red,
        ),
      ),
      body: SafeArea(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'DOB',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                DatePickerPage(),
                _HeightSlider(),
                _WeightSlider(),
                Icon(
                  Icons.arrow_drop_up_sharp,
                  color: Colors.red,
                  size: 75,
                ),
              ]),
              Container(
                margin: EdgeInsets.all(15),
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                child: TextButton(
                  onPressed: () {},
                  child: Text('CONFIRM',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ]),
      ),
    );
  }
}

class _HeightSlider extends StatefulWidget {
  const _HeightSlider({Key? key}) : super(key: key);

  @override
  __HeightSliderState createState() => __HeightSliderState();
}

class __HeightSliderState extends State<_HeightSlider> {
  int _currentHorizontalIntValue = 150;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Height',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                height: 35,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Feet',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'CM',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ])
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 20,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.red,
                height: 30,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 20,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black45,
                height: 10,
                width: 2,
              ),
            ],
          ),
        ),
        NumberPicker(
            value: _currentHorizontalIntValue,
            minValue: 120,
            maxValue: 220,
            step: 1,
            itemCount: 3,
            itemWidth: 100,
            itemHeight: 75,
            textStyle: TextStyle(fontSize: 15, color: Colors.grey),
            axis: Axis.horizontal,
            onChanged: (value) {
              setState(() => _currentHorizontalIntValue = value);
              // print(_currentHorizontalIntValue);
            }),
      ],
    );
  }
}

class _WeightSlider extends StatefulWidget {
  const _WeightSlider({Key? key}) : super(key: key);

  @override
  __WeightSliderState createState() => __WeightSliderState();
}

class __WeightSliderState extends State<_WeightSlider> {
  int _currentValue = 75;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Weight',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                height: 35,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Pound',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'KG',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ])
          ],
        ),
        NumberPicker(
            value: _currentValue,
            minValue: 20,
            maxValue: 120,
            step: 1,
            itemCount: 5,
            itemWidth: 75,
            itemHeight: 45,
            textStyle: TextStyle(fontSize: 15, color: Colors.grey),
            axis: Axis.horizontal,
            onChanged: (value) {
              setState(() => _currentValue = value);
              //print(_currentValue);
            }),
      ],
    );
  }
}
