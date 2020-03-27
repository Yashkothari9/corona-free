import 'package:cora_free/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 class Registration extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration',
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
           child: Stack(children: <Widget>[
             MyStackWidget(
               top: 62,
               end: 58,
               start: 58,
               child: SvgPicture.asset(
                 'asset/login.svg',
                 height: 212,
                 width: 259.51,
               ),
             ),
             MyStackWidget(
               top: 332,
               end: 56,
               start: 56,
               child: Text(
                 'Registration',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontFamily: 'Raleway',
                   fontSize: sp(27),
                 ),
               ),
             ),
             MyStackWidget(
               top: 376,
               end: 64,
               start: 75,
               child: Text(
                 'If already Registered,LOGIN!!.',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontFamily: 'Raleway',
                   fontSize: sp(16.1),
                   color: Color(0xff38C6F9)
                 ),
               ),
             ),
             MyStackWidget(
               top: 443,
               end: 58,
               height:40,
               start: 58,
               child: TextField(
                 decoration: InputDecoration(
                     filled: true,
                     hintText: 'Name',
                     hintStyle: TextStyle(
                       color: Color(0xff41C9FA),
                     ),
                     contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                     fillColor: Color(0xffC1F5FD),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(
                           width: 0,
                           style: BorderStyle.none,
                         )
                     )
                 ),
               ),
             ),
             MyStackWidget(
               top: 523,
               end: 58,
               height:40,
               start: 58,
               child: TextField(
                 decoration: InputDecoration(
                     filled: true,
                     hintText: 'Password',
                     hintStyle: TextStyle(
                       color: Color(0xff41C9FA),
                     ),
                     contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                     fillColor: Color(0xffC1F5FD),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(
                           width: 0,
                           style: BorderStyle.none,
                         )
                     )
                 ),
                 obscureText: true,
               ),
             ),
             MyStackWidget(
               top: 603,
               end: 58,
               height:40,
               start: 58,
               child: TextField(
                 decoration: InputDecoration(
                     filled: true,
                     hintText: 'Email-id',
                     hintStyle: TextStyle(
                       color: Color(0xff41C9FA),
                     ),
                     contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                     fillColor: Color(0xffC1F5FD),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(
                           width: 0,
                           style: BorderStyle.none,
                         )
                     )
                 ),
               ),
             ),
             MyStackWidget(
               top: 683,
               end: 58,
               height:40,
               start: 58,
               child: TextField(
                 decoration: InputDecoration(
                     filled: true,
                     hintText: 'Phone Number',
                     hintStyle: TextStyle(
                       color: Color(0xff41C9FA),
                     ),
                     contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                     fillColor: Color(0xffC1F5FD),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(
                           width: 0,
                           style: BorderStyle.none,
                         )
                     )
                 ),
               ),
             ),
           ]),
         )));
   }
 }
