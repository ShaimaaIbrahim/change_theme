import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:themes_app/ui/global/theme/app_theme.dart';

@immutable
abstract class ThemeEvent extends Equatable{
  final List props;

  ThemeEvent([this.props=const <dynamic> []]) : super();

}

@immutable
 class ThemeChange extends ThemeEvent{
  final AppTheme theme;

  ThemeChange({this.theme}) : super([theme]);
}