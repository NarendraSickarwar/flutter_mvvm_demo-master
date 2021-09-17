import 'package:flutter/material.dart';
import 'package:fluttermvvm/pages/movie_list_page.dart';
import 'package:fluttermvvm/viewmodels/movie_list_view_model.dart';

import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies",
        debugShowCheckedModeBanner: false,
        home:
        ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        )
    );
  }

}