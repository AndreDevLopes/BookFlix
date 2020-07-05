import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/book_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categorias = [
    "Android",
    "Java",
    "História",
    "Ciências",
    "Myths",
    "Typhography"
  ];

  int _selectIndex = 0;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 42, left: 24),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                  ),
                  child: Text(
                    "Browse",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Recommended",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]),
                ),
              ],
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categorias.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext c, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 6,
                      right: 6,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _selectIndex = index;
                        setState(() {});
                      },
                      child: Chip(
                        padding: EdgeInsets.only(
                          left: 8,
                          right: 8,
                        ),
                        backgroundColor: index == _selectIndex
                            ? Colors.blue
                            : Colors.grey[200],
                        label: Text(
                          categorias.elementAt(index),
                          style: TextStyle(
                              color: index == _selectIndex
                                  ? Colors.white
                                  : Colors.grey[700]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              itemCount: categorias.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return BookWidget();
              },
            ),
          ],
        ),
      ),
    );
  }
}
