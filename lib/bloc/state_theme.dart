import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
  class ThemeState extends Equatable{

  final ThemeData theme;

  ThemeState({@required this.theme}) : super();

  @override
  List<Object> get props => [this.theme];

}


