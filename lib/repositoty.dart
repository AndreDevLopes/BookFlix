import 'package:bookflix/home/bloc/HomePageState.dart';
import 'package:bookflix/models.dart';
import 'package:http/http.dart' as http;

class Repositoty {
  final String baseUrl = "https://www.googleapis.com/books/v1/volumes?";
  Future<HomePageState> getItems(String query) {
    return Future.delayed(Duration(seconds: 2),
        () => HomePageStateError(message: "Falha de conexão"));
  }
}
