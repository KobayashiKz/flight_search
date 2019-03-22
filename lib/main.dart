import 'package:flight_search/air_asia_bar.dart';
import 'package:flight_search/content_card.dart';
import 'package:flight_search/rounded_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Search',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AirAsiaBar(height: 210.0),
          Positioned.fill(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 40.0),
                child: Column(
                children: <Widget>[
                  _buildButtonsRow(),
                  Expanded(child: ContentCard(),),
                ],
                ),
              )
          ),
        ],
      )
    );
  }

  Widget _buildButtonsRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          RoundedButton(text: "ONE WAY"),
          RoundedButton(text: "ROUND"),
          RoundedButton(text: "MULTICITY", selected: true),
        ],
      ),
    );
  }
}
