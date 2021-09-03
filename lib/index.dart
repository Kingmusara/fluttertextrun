import 'package:flutter/material.dart';

class index extends StatefulWidget {
  String laq, pars;

  index({ this.laq="", required this.pars});

  @override
  _indexState createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2.sayfa"),
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Mailiniz",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              widget.laq,
              style: TextStyle(
                  color: Colors.blue.withOpacity(1.00),
                  fontFamily: "Fantasy",
                  fontSize: 35),
            ),
            Text(
              "Sifre",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              widget.pars,
              style: TextStyle(
                  color: Colors.blue.withOpacity(1.00),
                  fontFamily: "Fantasy",
                  fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cikis yap"),
              ),
            )
          ],
        ),
      )),
    );
  }
}
