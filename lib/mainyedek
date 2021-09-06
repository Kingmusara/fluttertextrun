import 'dart:math';

import 'package:flutter/material.dart';

import 'index.dart';

/*Form widget email check pass en az 5 karakter buyuk kucuk renk degisimleri **/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget /*Degismeyen mqlar*/ {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hocam uygulama hoj",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Babba Meraba"),
      ),
      body: formLogin(),
    );
  }
}

class formLogin extends StatefulWidget {
  const formLogin({Key? key}) : super(key: key);

  @override
  _formLoginState createState() => _formLoginState();
}

class _formLoginState extends State<formLogin> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  String mail = "itm@gmail.com", pass = "123", sonuc = "";

  bool checkLogin() {
    if (mail == t1.text && pass == t2.text) {
      setState(() {
        sonuc = "Login successful";
      });
      return true;
    } else {
      setState(() {
        sonuc = "Login unsuccessful";
      });
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: t1,
              keyboardType: TextInputType.emailAddress,
              autofillHints: [AutofillHints.email],
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.red)),
                  errorBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.red)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.yellow)),
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "E-mail address:"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return "Email dogrulanmadi";
                }

                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.red)),
                  errorBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.red)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.yellow)),
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "Hint here"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                if (value.length < 3) {
                  return '3 karakter';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  if (checkLogin()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => index(
                          laq : t1.text,
                          pars: t2.text,
                        ),
                      ),
                    );
                  }
                }
              },
              child: const Text('Submit'),
            ),
          ),
          Text(sonuc),
        ],
      ),
    );
  }
}

/*
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String username = "itm", pass = "123",sonuc="";

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  loginapp() {
    setState(() {
      if (username == t1.text && pass == t2.text) {
        sonuc = "Giris Yapildi";
      }
      else{
        sonuc = "Hatali giris yaptiiz";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Text("Username"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: t1,
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.cyanAccent)),
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Username here"),
              ),
            ),
            Text("Passw"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: new InputDecoration(

                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.cyanAccent)),
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Passw here"),
              ),
            ),
            RaisedButton(onPressed: loginapp, child: Text("Login")),
            Text(sonuc),
          ],
        ),
      ),
    );
  }
}
*/

/*
class AnaEkran extends StatefulWidget /*Aga degisen ozllikler buraya*/ {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  Color sea = Colors.black;
  Color cnm = Colors.white;
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  toplaButon() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);

      sonuc = sayi1 + sayi2;

      sea = Colors.black38;
      cnm = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("$sonuc"),
            TextField(controller: t1, keyboardType: TextInputType.number),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    errorBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Hint here"),
              ),
            ),
            RaisedButton(
              onPressed: toplaButon,
              color: sea,
              textColor: cnm,
              child: Text("Hocamm"),
            )
          ],
        ),
      ),
    );
  }
}
*/

/* class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = "baba meraba";
  int sayi = 3;
  Color color = Colors.red;
  String yazidegis = "selammm";
  Color textcolor = Colors.black;

  martGoster() {
    setState(() {
      blogYazisi = "meraba gardas";
    });
  }

  sayiArtt() {
    setState(() /*ekran guncelle*/ {
      sayi += 1;
      color = Colors.blue;
      textcolor = Colors.white;
      yazidegis = "SELAMMM";
    });
  }

  agaNoldu() {
    setState(() {
      blogYazisi = "agadegisss";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(),
            TextField(),
            Text(blogYazisi),
            Text(sayi.toString()),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.end,
              spacing: 20,
              runSpacing: 20.0,
              children: [
                RaisedButton(
                    child: Text("Hesapla"), onPressed: martGoster),
                RaisedButton(
                  onPressed: agaNoldu,
                  child: Text("tekrar degis knk"),
                ),
                RaisedButton(
                  onPressed: sayiArtt,
                  color: color,
                  textColor: textcolor,
                  child: Text(yazidegis),
                ),
                RaisedButton(
                  onPressed: agaNoldu,
                  child: Text("tekrar degis knk"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}*/

/*
class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            // Use the properties stored in the State class.
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            // Define how long the animation should take.
            duration: const Duration(seconds: 1),
            // Provide an optional curve to make the animation feel smoother.
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // When the user taps the button
          onPressed: () {
            // Use setState to rebuild the widget with new values.
            setState(() {
              // Create a random number generator.
              final random = Random();

              // Generate a random width and height.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Generate a random color.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
********************************************************************/
