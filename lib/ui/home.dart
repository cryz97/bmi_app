import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BmiState();
  }
}

class BmiState extends State<Bmi> {

  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weighteController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            new Image.asset(
              "images/bmilogo.png",
              height: 85,
              width: 75,
            ),
            new Container(
              margin: const EdgeInsets.all(3),
              height: 280,
              width: 300,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: "Age",
                        hintText: "ex: 21",
                        icon: new Icon(Icons.person_outline)),
                  ),
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: "Height in ft",
                        hintText: "ex: 65",
                        icon: new Icon(Icons.insert_chart)),
                  ),
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: "Weight in lbs",
                        hintText: "ex: 180",
                        icon: new Icon(Icons.line_weight)),
                  ),
                  new Padding(padding: new EdgeInsets.all(15)),
                  new Container(
                    alignment: Alignment.center,
                    child: new RaisedButton(
                      onPressed: null,
                      color: Colors.pinkAccent,
                      child: new Text("Calculate"),
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new Padding(padding: const EdgeInsets.all(7)),

                new Text("BMI: ",
                style: new TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  fontSize: 20
                ),),
                
                new Padding(padding: const EdgeInsets.all(7)),

                new Text("Overweight",
                  style: new TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,

                  ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
