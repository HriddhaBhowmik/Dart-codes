import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.pinkAccent);
  FlutterStatusbarcolor.setNavigationBarColor(Colors.blueAccent);

  myprint() {
    print("Hriddha Bhowmik");
  }

  mytoast() {
    Fluttertoast.showToast(
        msg: "I am Hriddha Bhowmik",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.limeAccent,
        fontSize: 16.0);
  }

  mytoast1() {
    Fluttertoast.showToast(
        msg: "Signing in",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  mytoast2() {
    Fluttertoast.showToast(
        msg: "Switching off",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.blue,
        textColor: Colors.limeAccent,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.limeAccent.shade100,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.red,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hriddha Bhowmik",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text("hriddha2503@gmail.com"),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/HriddhaBhowmik/Flutter-pics/master/IMG20190922144712.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.redAccent,
                width: 3,
              ),
            ),
            width: 100,
            height: 100,
          ),
        ),
      ],
    ),
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: mytoast),
            IconButton(icon: Icon(Icons.account_box), onPressed: mytoast1),
            IconButton(
                icon: Icon(Icons.power_settings_new), onPressed: mytoast2),
          ],
        ),
        backgroundColor: Colors.greenAccent,
        body: mybody),
  );
}
