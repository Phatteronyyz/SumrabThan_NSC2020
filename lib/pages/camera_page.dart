import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPage createState() => _CameraPage();
}

class _CameraPage extends State<CameraPage> {
  var image;
  File images;

  @override
  Widget build(BuildContext context) {
    String argkubkao = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xffff4242),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 42, 13, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29.0),
                  color: const Color (0xffffffff),
                )
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: ,
                  height: ,
                ),
                GestureDetector(
                  onTap: ()async{
                    final
                  },
                ),
              ],
            )
          ],

        ),
      )
    );
  }
}
