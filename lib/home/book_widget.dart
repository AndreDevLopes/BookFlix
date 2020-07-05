import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  String imgUrl =
      "https://a-static.mlcdn.com.br/618x463/livro-o-mundo-de-cabeca-pra-baixo-capa-dura/cliquebooks/188481-6/a015b3d30ad58c46e95e69839dac2dea.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        width: 200,
        margin: EdgeInsets.fromLTRB(24, 12, 24, 12),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Image.network(imgUrl),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 230,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
