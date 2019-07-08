import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

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

  genreButtonPressed(int genreId, BuildContext context) {
    return () {
      Navigator.push(
          context, MaterialPageRoute(
          builder: (context) => MovieScreen(genreId: genreId)));
    };
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
              ListView(
                padding: const EdgeInsets.all(30.0),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(28, context),
                        child: Text('Action')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(12, context),
                        child: Text('Adventure')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(16, context),
                        child: Text('Animation')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(35, context),
                        child: Text('Comedy')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(80, context),
                        child: Text('Crime')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(99, context),
                        child: Text('Documentary')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(18, context),
                        child: Text('Drama')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(10751, context),
                        child: Text('Family')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(14, context),
                        child: Text('Fantasy')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(36, context),
                        child: Text('History')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(27, context),
                        child: Text('Horror')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(10402, context),
                        child: Text('Music')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(9648, context),
                        child: Text('Mystery')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(10749, context),
                        child: Text('Romance')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(878, context),
                        child: Text('Science Fiction')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(53, context),
                        child: Text('Thriller')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: RaisedButton(
                        onPressed: genreButtonPressed(10752, context),
                        child: Text('War')),
                  )
                ],

              )

//
//                Container(
//                  child: DropdownButton<String>(
//                    value: dropdownValue,
//                    onChanged: (String newValue) {
//                      setState(() {
//                        print("newvalue" + newValue);
//                        dropdownValue = newValue;
//                      });
//                    },
//                    items: <String>[
//                      'Choose genre',
//                      'Action',
//                      'Adventure',
//                      'Animation',
//                      "Comedy",
//                      "Crime",
//                      "Documentary",
//                      "Drama",
//                      "Family",
//                      "Fantasy",
//                      "History",
//                      "Horror",
//                      "Music",
//                      "Mystery",
//                      "Romance",
//                      "Science Fiction",
//                      "Thriller",
//                      "War"
//                    ].map<DropdownMenuItem<String>>((String value) {
//                      return DropdownMenuItem<String>(
//                        value: value,
//                        child: Text(value),
//                      );
//                    }).toList(),
//                  ),
//                )
//    ,
//
//                Container(
//                  alignment: Alignment.center,
//                  margin: EdgeInsets.only(
//                      left: 10.0, right: 10.0, top: 400.0, bottom: 10.0),
//                  child: RaisedButton(
//                    child: Text("click"),
//                    onPressed: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => MovieScreen()));
//                    },
//                    color: Colors.amber,
//                    shape:  RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
//
//                  ),
//                ),
//
//              ],
//            ),
            ])));
  }
}

class Movie {
  String title;
  String posterPath;
  String release;

  Movie({this.title, this.posterPath, this.release});

  factory Movie.fromJson(Map<String, dynamic> data) {
    return Movie(
        title: data["title"],
        posterPath: data["poster_path"],
        release: data["release_date"]);
  }
}

class MovieScreen extends StatefulWidget {
  int genreId;

  MovieScreen({this.genreId});

  @override
  _MovieScreenState createState() => _MovieScreenState(genreId: this.genreId);
}

class _MovieScreenState extends State<MovieScreen> {
  int genreId;
  Future<List<Movie>> movies;

  _MovieScreenState({this.genreId});

  @override
  void initState() {
    super.initState();
    movies = fetchMovies(this.genreId);
  }

  Future<List<Movie>> fetchMovies(genreId) async {
    Random random = Random();
    int page = random.nextInt(15);
    String url =
        "https://api.themoviedb.org/3/discover/movie?with_genres=$genreId&page=$page&include_adult=false&api_key=8df1ff267409edc4e0275609debe6fde";
    print(url);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var results = data["results"] as List;
      return results.map((json) => Movie.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Container(
          child: FutureBuilder(
            future: movies,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Text("error");
                  } else {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          Movie movie = snapshot.data[index];
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ListTile(

                                  title: Center(child: Text(movie.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),)),
                                  subtitle: Center(child: Text(
                                      movie.release.substring(0, 4)))
                              ),
                              GestureDetector(child: Image.network(
                                  "http://image.tmdb.org/t/p/w500" +
                                      movie.posterPath),
                                onTap: () {
                                  print("hey");
                                },)


                            ],
                          );
                        });
                  }
              }
            },
          )),
    );
  }
}
