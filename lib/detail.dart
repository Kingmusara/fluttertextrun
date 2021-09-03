import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  int index;
  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("denememq"),
      ),
      body: Center(
        child: Text("Secilen indis $index"),
      ),
    );
  }
}
