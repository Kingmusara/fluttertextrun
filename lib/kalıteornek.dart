import 'package:flutter/material.dart';

void main() => runApp(kaliteApp());

class kaliteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "kaliteornek",
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
        title: Text("meraba"),
      ),
      body: tasarim(),
    );
  }
}

class tasarim extends StatefulWidget {
  const tasarim({Key? key}) : super(key: key);

  @override
  _tasarimState createState() => _tasarimState();
}

class _tasarimState extends State<tasarim> {
  int kalan = 1 , kalan2 = 0 ,kalan3=0;

  kalanart() {
    setState(() {
      kalan++;
    });
  }
  kalanart2() {
    setState(() {
      kalan2++;
    });
  }
  kalanart3() {
    setState(() {
      kalan3++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Image.asset(
                                  'lib/images/t-shirt.png',
                                  height: 115.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        TextWidget(
                                            text1: "blabalbal",
                                            text2: "afafafafa")
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Column(
                                      children: [
                                        TextWidget(
                                            text1: "9999",
                                            text2: "afafafafa",
                                            mesafe:0 ,
                                        fontWeight: FontWeight.normal,)
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Column(
                                      children: [
                                        TextWidget(
                                            text1: "blabalbal",
                                            text2: "afafafafa")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        TextWidget(
                                            text1: "blabalbal",
                                            text2: "afafafafa")
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Column(
                                      children: [
                                        TextWidget(
                                            text1: "blabalbal",
                                            text2: "afafafafa")
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Column(
                                      children: [
                                        TextWidget(
                                            text1: "blabalbal",
                                            text2: "afafafafa")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("baba meraba"),
                            Text(
                              "1.Kalite",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: SizedBox(
                                  width: 50.0,
                                  height: 80.0,
                                  child: ElevatedButton(
                                    onPressed: kalanart,
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(15)),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.green),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ))),
                                    child: Text(
                                      "$kalan",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                          child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 150,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: kalanart2,
                                style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amber),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                                child: Text(
                                  "$kalan2",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: kalanart,
                                style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amber),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                                child: Icon(
                                  Icons.add_alert,
                                  color: Colors.pink,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Card(
                          child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 150,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: kalanart3,
                                style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.yellow),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                                child: Text(
                                  "$kalan3",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: kalanart,
                                style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.yellow),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                                child: Icon(
                                  Icons.add_alert,
                                  color: Colors.pink,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  TextWidget(
      {Key? key,
      required this.text1,
      required this.text2,
      this.color = Colors.teal,
      this.fontSize = 25,
      this.fontSize2 = 15,
      this.mesafe=10,
        this.fontWeight = FontWeight.bold,
      this.color2 = Colors.red})
      : super(key: key);
  String text1, text2;
  Color color, color2;
  FontWeight fontWeight;
  double fontSize, fontSize2;
  double mesafe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(color: color, fontSize: fontSize,fontWeight:fontWeight),
        ),
        SizedBox(height: mesafe),
        Text(
          text2,
          style: TextStyle(color: color2, fontSize: fontSize2),
        ),
      ],
    );
  }
}
/**/
