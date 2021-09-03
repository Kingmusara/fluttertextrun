import 'package:flutter/material.dart';
import 'package:lll/detail.dart';
import 'package:lll/index.dart';

void main() => runApp(listApp());

class listApp extends StatelessWidget {
  const listApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listApp",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("liste ornek"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  List listElemanlari = [
    "baba meraba",
    "as cnm",
    "nbr cnm",
    "as cnm",
    "nbr cnm",
    "as cnm",
    "nbr cnm",
    "as cnm",
    "nbr cnm",
    "as cnm",
    "nbr cnm",
    "as cnm",
    "as cnm",
    "nbr cnm",
    "as cnm",
    "nbr cnm",
    "as cnm",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Flexible(
              child: ListView.builder(
                  itemCount: listElemanlari.length,
                  itemBuilder: (context, cq) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(cq)));
                        },
                        title: Text(listElemanlari[cq]),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("lib/images/indir.jfif"),
                        ),
                        subtitle: Text("Tikla moruq"),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}

class resimler extends StatelessWidget {
  resimler({Key? key, required this.text, required this.imageUrl})
      : super(key: key);
  String text;

  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(text),
        )
      ],
    );
  }
}

/*resimler(text: listElemanlari[cq], imageUrl: 'lib/images/indir.jfif');*/

