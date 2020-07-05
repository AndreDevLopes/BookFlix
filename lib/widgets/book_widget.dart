import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  String imgUrl =
      "https://a-static.mlcdn.com.br/618x463/livro-o-mundo-de-cabeca-pra-baixo-capa-dura/cliquebooks/188481-6/a015b3d30ad58c46e95e69839dac2dea.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 200,
        margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Image.network(
                  imgUrl,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 220,
                height: 200,
                padding: EdgeInsets.all(24),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "BOOK Title",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Book Author",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
