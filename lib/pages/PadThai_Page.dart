import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sumrabthan_version01/Foodreturn/Foodresult.dart';
import 'package:sumrabthan_version01/pages/scan_page.dart';
import 'package:sumrabthan_version01/pages/home.dart';
import 'package:sumrabthan_version01/pages/imagetrns.dart';

class PadthaiPage extends StatefulWidget {
  @override
  _PadthaiPage createState() => _PadthaiPage();
}

var resdata;
var response;
var food_name;

class NetworkServices{
  Future postData(String base64)async{
    Dio dio = new Dio();
    response = await dio.post("https://api.aiforthai.in.th/thaifood", options:
    Options(contentType: Headers.jsonContentType, headers: {"Apikey": "39b3QPzmWT05sNepB6EoUMwEXNaZt6o8"})
        , data: {"file": base64,});
    if (response.statusCode==200){
      print(response.data);
    }
  }
}

class _PadthaiPage extends State<PadthaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/pageklang.png"),
              fit: BoxFit.cover,
            ),
          ),
          // child: Row(
          //   children: <Widget>[
          //     Padding(
          //       padding: const EdgeInsets.only(top: 10),
          //       child:RaisedButton(
          //         onPressed: (){
          //           MaterialPageRoute(
          //             builder: (_) => ScanPage(),
          //           );
          //         } ,
          //         child: Container(
          //           width: 60.0,
          //           height: 60.0,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage("images/back.png"),
          //               fit: BoxFit.cover,
          //             ),
          //             borderRadius:
          //             BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          //             color: const Color(0xfffdde58),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: const Color(0x29000000),
          //                 offset: Offset(0, 3),
          //                 blurRadius: 6,
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //
          //   ],
          // ),


        ),


    );
  }
}
