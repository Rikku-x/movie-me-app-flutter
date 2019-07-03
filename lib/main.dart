import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: WelcomeScreen(),
));

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List posters = [
    "images/0.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/10.jpg",
    "images/13.jpg",
    "images/15.jpg",
    "images/16.jpg",
    "images/17.jpg",
    "images/18.jpg",
    "images/19.jpg",
    "images/20.jpg"
  ];

  String dropdownValue = 'Choose genre';
  Random random = Random();
  int index;

  @override
  void initState() {
    index = random.nextInt(posters.length);
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          body: Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(posters[index]), fit: BoxFit.fitHeight),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 400.0, bottom: 10.0),
                  child: RaisedButton(
                    child: Text("click"),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MovieScreen()));
                    },
                  ),
                ),
                Container(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (String newValue) {
                      setState(() {
                        print("newvalue" + newValue);
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Choose genre',
                      'Action',
                      'Adventure',
                      'Animation',
                      "Comedy",
                      "Crime",
                      "Documentary",
                      "Drama",
                      "Family",
                      "Fantasy",
                      "History",
                      "Horror",
                      "Music",
                      "Mystery",
                      "Romance",
                      "Science Fiction",
                      "Thriller",
                      "War"
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
class MovieScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
          left: 10.0, right: 10.0, top: 400.0, bottom: 10.0),
      child: RaisedButton(
        child: Text("ggg"),
        onPressed: () {
//          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
          Navigator.pop(context);
        },
      ),
    );
  }
}