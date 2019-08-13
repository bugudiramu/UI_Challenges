import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// BMI FORMULA = Kg/m*m
class _HomePageState extends State<HomePage> {
  var age = 0;
  var weight = 0;
  var ageSliderVal = 0.0;
  var weightSliderVal = 0.0;
  var heightSliderVal = 0.0;
  var radioValue = 0;
  String bmi;
  var result;

  calculateBMI() {
    var heightInMeter = heightSliderVal * 0.01;
    setState(() {
      // if (weightSliderVal <= 0 || heightSliderVal <= 0) {
      //   result = "0";
      // }
      result = weightSliderVal / (heightInMeter * heightInMeter).toDouble();
      if (result < 18.5) {
        bmi = 'Underweight '.toUpperCase();
      } else if (result >= 18.5 && result < 25) {
        bmi = 'Normal'.toUpperCase();
      } else if (result >= 25 && result < 30) {
        bmi = 'Overweight '.toUpperCase();
      } else if (result >= 30) {
        bmi = 'Obesity '.toUpperCase();
      } else {
        bmi = 'Please Choose The Height And Weight Atleast To Calculate BMI.';
      }
      var finalResult = result.toStringAsFixed(1);

      showResultDialog(finalResult, bmi);
      return result;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("bmi calcultor".toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Container(
        color: Colors.blueGrey.shade900,
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                ageCard(deviceWidth, "age".toUpperCase(), age),
                weightCard(deviceWidth, "weight".toUpperCase(), weight),
              ],
            ),
            heightCard(deviceWidth, "height".toUpperCase()),
            genderCard(deviceWidth),
            Container(
              padding: const EdgeInsets.only(top: 7.0),
              alignment: Alignment.center,
              child: Text("Calculate You'r Body Mass Index (BMI).",
                  style: Theme.of(context).textTheme.title),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          tooltip: "calculate BMI",
          backgroundColor: Colors.blueGrey,
          onPressed: () => calculateBMI(),
          child: Icon(
            FontAwesomeIcons.heart,
          ),
        ),
      ),
    );
  }

  Widget ageCard(double deviceWidth, String title, int ageVal) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        // padding: const EdgeInsets.only(
        //     top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
        child: Card(
          color: Colors.blueGrey.shade700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: 210.0,
            width: deviceWidth,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "${ageSliderVal.toInt()}",
                        style: Theme.of(context).textTheme.headline,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Text(
                          "years",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Slider(
                  min: 0.0,
                  max: 100.0,
                  divisions: 100,
                  activeColor: Colors.deepOrangeAccent,
                  inactiveColor: Colors.white,
                  value: ageSliderVal,
                  onChanged: (newVal) {
                    setState(() {
                      ageSliderVal = newVal;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            ageSliderVal = ageSliderVal - 1;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            ageSliderVal = ageSliderVal + 1;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.plus,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget weightCard(double deviceWidth, String title, int weightVal) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        // padding: const EdgeInsets.only(
        // top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
        child: Card(
          color: Colors.blueGrey.shade700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: 210.0,
            width: deviceWidth,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "${weightSliderVal.toInt()}",
                        style: Theme.of(context).textTheme.headline,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Text(
                          "kg",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Slider(
                  min: 0.0,
                  max: 200.0,
                  divisions: 200,
                  activeColor: Colors.deepOrangeAccent,
                  inactiveColor: Colors.white,
                  value: weightSliderVal,
                  onChanged: (newVal) {
                    setState(() {
                      weightSliderVal = newVal;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            weightSliderVal = weightSliderVal - 1;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            weightSliderVal = weightSliderVal + 1;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.plus,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget heightCard(double deviceWidth, String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      // padding: const EdgeInsets.only(
      //     top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
      child: Card(
        color: Colors.blueGrey.shade700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: 180.0,
          width: deviceWidth,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.title,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${heightSliderVal.toInt()}",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "cm",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                child: Slider(
                  min: 0.0,
                  max: 280.0,
                  divisions: 280,
                  activeColor: Colors.deepOrangeAccent,
                  inactiveColor: Colors.white,
                  value: heightSliderVal,
                  onChanged: (newVal) {
                    setState(() {
                      heightSliderVal = newVal;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget genderCard(double deviceWidth) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.blueGrey.shade700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: 150.0,
          width: deviceWidth,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Text(
                  "gender".toUpperCase(),
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("i'm",
                          style: Theme.of(context).textTheme.headline),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "male".toUpperCase(),
                              style: Theme.of(context).textTheme.title,
                            ),
                          ),
                          Radio(
                            activeColor: Colors.white,
                            value: 0,
                            groupValue: radioValue,
                            onChanged: handleRadioBtnChanged,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "female".toUpperCase(),
                              style: Theme.of(context).textTheme.title,
                            ),
                          ),
                          Expanded(
                            child: Radio(
                              activeColor: Colors.white,
                              value: 1,
                              groupValue: radioValue,
                              onChanged: handleRadioBtnChanged,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleRadioBtnChanged(var value) {
    setState(() {
      radioValue = value;

      switch (radioValue) {
        case 0:
          print("$value is male");
          return "You'r Gender is Male";

          break;
        case 1:
          print("$value is Female");

          return "You'r Gender is Female";
          break;

        default:
          return "You'r Haven't Selected Gender";
          break;
      }
    });
  }

  showResultDialog(result, bmi) {
    return Alert(
      type: AlertType.success,
      style: AlertStyle(
        animationType: AnimationType.shrink,
        titleStyle: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.w800,
          fontSize: 75.0,
        ),
        buttonAreaPadding: const EdgeInsets.all(10.0),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      title: "$result ",
      context: context,
      content: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Text(
                "$bmi",
                style: TextStyle(color: Colors.cyan, letterSpacing: 0.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Text(
                "Normal BMI range: 18.5kg/m2 - 25kg/m2",
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
            ),
          ],
        ),
      ),
      // desc: "Normal BMI range: 18.5kg/m2 - 25kg/m2",
      buttons: [
        DialogButton(
          color: Colors.blueGrey.shade600,
          child: Text(
            "CLOSE",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
  }
}
