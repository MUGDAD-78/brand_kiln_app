import 'package:flutter/material.dart';
const decorationtextFiled =   InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  hintStyle: TextStyle(fontFamily: "myfont"),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    

    borderSide:
        BorderSide(color: Colors.black, width: 2.0),
        
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      suffixIcon: Icon(Icons.search_outlined ,color: Colors.black,),
);