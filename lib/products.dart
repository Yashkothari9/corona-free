import 'package:cora_free/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child:MyScaffold()
      ),
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
          child:SizedBox(
            width: (o == Orientation.portrait) ? w(375) : w(812),
            height: (o == Orientation.portrait) ? h(812) : w(812),
            child:Stack(
              children: <Widget>[
                MyStackWidget(
                  start: 19,
                  top:17,
                  height: 18,
                  width:22,
                  child:SvgPicture.asset(
                    'asset/menu-button-of-three-horizontal-lines.svg',
                    semanticsLabel: "menu",
                    height: 18,
                    width: 22,
                  ),
                ),
                MyStackWidget(
                    top: 10,
                    height: 61,
                    start: 59,
                    width: 258,
                    child: Text(
                        'PRODUCTS',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Raleway", fontSize: sp(40),color: Color(0xff38C6F9))
                    )
                ),
                MyStackWidget(
                    top: 75,
                    height: 43,
                    start: 50,
                    width: 258,
                    child: Text(
                        'MASK',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Raleway", fontSize: sp(32),color: Color(0xff38C6F9))
                    )
                ),
                MyStackWidget(
                  top: 128.2,
                  height: 163.18,
                  start: 112.2,
                  width: 187.18,
                  child: SvgPicture.asset(
                    'asset/man.svg',
                    height:163.18,
                    width: 187.18,
                  ),
                ),
                MyStackWidget(
                  top: 317,
                  height: 55,
                  start: 85,
                  width: 55,
                  child: CircularButton(
                    path:'asset/plus.svg',
                  ),
                ),
                MyStackWidget(
                  top: 317,
                  height: 55,
                  start: 225,
                  width: 55,
                  child: CircularButton(
                    path:'asset/minus.svg',
                  ),
                ),
                MyStackWidget(
                  top: 317,
                  height: 71,
                  start: 155,
                  width: 51,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.0),
                        topRight: Radius.circular(7.0),
                        bottomLeft: Radius.circular(7.0),
                        bottomRight: Radius.circular(7.0),
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(27, 42, 27, 42),
                    child: Text(
                        "0"
                    ),
                  ),
                  ),
                ),
                MyStackWidget(
                    top: 406,
                    height: 43,
                    start: 59,
                    width: 258,
                    child: Text(
                        'HAND SANTIZER',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: "Raleway", fontSize: sp(30),color: Color(0xff38C6F9))
                    )
                ),
                MyStackWidget(
                  top: 473.2,
                  height: 102.18,
                  start: 150,
                  width: 63,
                  child: SvgPicture.asset(
                    'asset/hand-sanitizer.svg',
                    height:102.18,
                    width: 63,
                  ),
                ),
                MyStackWidget(
                  top: 610,
                  height: 55,
                  start: 85,
                  width: 55,
                  child: CircularButton(
                    path:'asset/plus.svg',
                  ),
                ),
                MyStackWidget(
                  top: 610,
                  height: 55,
                  start: 225,
                  width: 55,
                  child: CircularButton(
                    path:'asset/minus.svg',
                  ),
                ),
                MyStackWidget(
                  top: 610,
                  height: 71,
                  start: 155,
                  width: 51,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7.0),
                          topRight: Radius.circular(7.0),
                          bottomLeft: Radius.circular(7.0),
                          bottomRight: Radius.circular(7.0),
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(27, 42, 27, 42),
                      child: Text(
                          "0"
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
       ),
      );
  }
}
class CircularButton extends StatelessWidget {
  String path;
  Function OnTap;
  CircularButton({this.path,this.OnTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap : OnTap,
      child : Container(
        decoration:BoxDecoration(
          color: Colors.white,
          shape:BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4,
              offset:Offset(0,1.5),
            ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  offset: Offset(0,1.5),
                )

          ]
    ),
        child: Center(
          child:SvgPicture.asset(path,
          height: 40,
            width: 40,
          )
        ),
    ),
    );
  }
}
