import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item{
  String? country;
  String? code;
  //Icon? icon;

  Item({this.country, this.code,});

  static List<Item> users(){
    return[
      Item(country: 'BD',code: '+008'),
      Item(country: 'USA',code: '0011'),
      Item(country: 'IND',code: '0000'),
      Item(country: 'NEP',code: '111'),
    ];
  }
}