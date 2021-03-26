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

class FoodPage extends StatefulWidget {
  @override
  _FoodPage createState() => _FoodPage();
}

var resdata;
var response;
var food_name='Press';
class NetworkServicess{
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

class _FoodPage extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 50,

              ),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      ),
                    );
                },
                child: Text(
                  'back'
                ),
              ),
              RaisedButton(
                onPressed: (){
                  resdata = json.encode(response.data);
                  var result = foodNameFromJson(resdata);
                  food_name = result.objects.first.result;
                  setState(() {
                  });
                },
                child: Text(
                    food_name
                ),
              ),
            ],
          ),

        ],
      )
    );
  }
}
