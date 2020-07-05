import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:bookflix/models.dart';

class HomePageState extends Equatable {
  HomePageState([List tmp = const []]) : super(tmp);
}

class HomePageStateLoading extends HomePageState {
  @override
  String toString() => "HomePageStateLoading";
}

class HomePageStateSuccess extends HomePageState {
  final List<Items> items;
  HomePageStateSuccess({@required this.items});
  @override
  String toString() => "HomePageStateSuccess";
}

class HomePageStateError extends HomePageState {
  final String message;
  HomePageStateError({@required this.message});
  @override
  String toString() => "HomePageStateError";
}
