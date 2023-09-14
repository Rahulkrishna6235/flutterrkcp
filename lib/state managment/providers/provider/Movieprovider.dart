import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterrkcp/state%20managment/providers/modal/movie.dart';

final List<Movie> movielist =List.generate(100, (index) => Movie(
    title: 'movie $index',time: "${Random().nextInt(100)+60} minutes"));
class MovieProvide extends ChangeNotifier{
  final List<Movie> _movies = movielist;

  List<Movie> get movies=>_movies;
  final List<Movie> _wishlist = [];
  List<Movie> get wishmovie =>_wishlist;

  void addTolist(Movie moviefrommain){
    _wishlist.add(moviefrommain);
    notifyListeners();

  }
  void removefrmlist( Movie removedmain){
    _wishlist.remove(removedmain);
    notifyListeners();
  }

}