import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_app/bloc/bloc_theme.dart';
import 'package:themes_app/bloc/event_theme.dart';
import 'package:themes_app/ui/global/theme/app_theme.dart';

class PreferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme].primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.toString(),
                  style: appThemeData[itemAppTheme].textTheme.headline1,
                ),
                onTap: (){
                  BlocProvider.of<ThemeBloc>(context).add(ThemeChange(theme: itemAppTheme));
                },
              ),
            );
          },
          ),
    );
  }
}
