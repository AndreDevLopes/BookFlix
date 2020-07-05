import 'package:bookflix/home/bloc/HomePageState.dart';
import 'package:bookflix/models.dart';

class Repositoty {
  Future<HomePageState> getItems(String query) {
    return Future.delayed(Duration(seconds: 2),
        () => HomePageStateError(message: "Falha de conexão"));
  }
}
