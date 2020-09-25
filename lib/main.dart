import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack App",
      theme: ThemeData(
        primarySwatch: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHome(),
    );
  }
}
class MyHome extends StatelessWidget{
final fondo = Container(
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fondo.jpg"),
          fit: BoxFit.cover
        )
    ),
);

final gradiente = Center(
  child: Container(
    height: 100,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.black45.withOpacity(0.3), Colors.black54.withOpacity(0.3)]
        )
      ),
    ),
  );

  final logo = Center(
    child: Container(
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/logo.png")
        )
      ),
    ),
  );
final  button= RaisedButton(
onPressed: (){},
padding: EdgeInsets.only(
top: 15,
bottom: 15
),
child: Text(
"Log In",
style: TextStyle(
fontSize:20,
fontWeight: FontWeight.bold
),
),
color: Colors.white,
);

  final mensaje = Container(
    alignment: Alignment.bottomCenter,
    child: Text(
      "Forgot Password"
    )
  );

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
        children: <Widget>[
          fondo,
          gradiente,
          logo,
          button
        ],
        ),
      );
  }

}
