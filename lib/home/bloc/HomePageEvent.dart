import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class HomePageEvent extends Equatable {
  HomePageEvent([List tmp = const []]) : super(tmp);
}

class HomePageEvetSeach extends HomePageEvent {
  final String query;
  HomePageEvetSeach({@required this.query});
}
