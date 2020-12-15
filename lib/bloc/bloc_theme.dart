import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_app/bloc/event_theme.dart';
import 'package:themes_app/bloc/state_theme.dart';
import 'package:themes_app/ui/global/theme/app_theme.dart';

class ThemeBloc extends Bloc<ThemeEvent , ThemeState>{

  @override
  ThemeState get initialState => ThemeState(theme: appThemeData[AppTheme.GreenLight]);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async*{

   if(event is ThemeChange){
    yield ThemeState(theme: appThemeData[event.theme]);
   }

  }
}