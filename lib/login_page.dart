import 'package:cora_free/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffold(),
    );
  }
}
class MyScaffold extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      Orientation o = MediaQuery
          .of(context)
          .orientation;
      ScreenUtil.init(context,
          width: (o == Orientation.portrait) ? 375 : 812,
          height: (o == Orientation.portrait) ? 812 : 375,
          allowFontScaling: true);
      return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: (o == Orientation.portrait) ? w(375) : w(812),
            height: (o == Orientation.portrait) ? h(812) : w(812),
            child: Stack(
              children: <Widget>[
                MyStackWidget(
                    top: 91,
                    height: 33,
                    start: 148,
                    width: 72,
                    child: Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "Raleway", fontSize: sp(25),color: Color(0xff38C6F9))
                    )
                ),
                MyStackWidget(
                  top: 212,
                  height: 158.14,
                  start: 83.28,
                  width: 217.5,
                  child: SvgPicture.asset(
                    'asset/login.svg',
                    semanticsLabel: "login",
                    height: 158.24,
                    width: 217.5,

                  ),
                ),
                MyStackWidget(
                  top: 462,
                  height: 48,
                  start: 75,
                  width: 226,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Color(0xff38C6F9)),
                      contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                      //fillColor: Color(0xff0AFCBA).withOpacity(0.5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(120),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
                MyStackWidget(
                  top: 530,
                  height: 48,
                  start: 75,
                  width: 226,
                  child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color(0xff38C6F9)),
                          contentPadding: EdgeInsets.only(
                              left: w(20), top: h(5)),
                         // fillColor: Color(0xff0AFCBA).withOpacity(0.5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(120),
                              borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.solid
                              ),
                          ),
                      ),
                    obscureText: true,
                  ),
                ),
                MyStackWidget(
                  top: 613,
                  height: 48,
                  start: 75,
                  width: 226,
                  child: RaisedButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Raleway Light",
                          fontSize: sp(16)),
                    ),
                    color: Color(0xff38C6F9),
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(120),
                      //borderRadius: new BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red)
                    ),
                    // color: Colors.deepPurpleAccent,
                    onPressed: () {
                      // TODO: Show the next page (101)
                    },
                    splashColor: Colors.grey,
                  ),
                ),
                MyStackWidget(
                  top: 680,
                  height: 20,
                  start: 85,
                  width: 200,
                  child: Text(
                    "If not registered,CLICK HERE!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "Raleway", fontSize: sp(12),color: Color(0xff38C6F9))
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }


