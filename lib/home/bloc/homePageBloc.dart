import 'package:bloc/bloc.dart';
import 'package:bookflix/home/bloc/HomePageEvent.dart';
import 'package:bookflix/home/bloc/HomePageState.dart';
import 'package:bookflix/repositoty.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final Repositoty repositoty;
  HomePageBloc({@required this.repositoty});

  @override
  HomePageState get initialState => HomePageStateLoading();
  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if (event is HomePageEvetSeach) {
      yield HomePageStateLoading();
      var query = event.query;
      var itemsresult = await repositoty.getItems(query);
      yield itemsresult;
    }
  }
}
