import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_app/bloc/bloc_theme.dart';
import 'package:themes_app/bloc/state_theme.dart';
import 'package:themes_app/ui/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
       return ThemeBloc();},
      child: BlocBuilder <ThemeBloc , ThemeState>(
        builder: _bildWithTheme
      ),
    );
  }
}

Widget _bildWithTheme(BuildContext context , ThemeState state){
  return MaterialApp(
    title: 'Flutter Demo',
    theme: state.theme,
    home: HomePage(),
  );
}
