import 'package:flutter/material.dart';

class articelModel {
  final String? image;
  final String titel;
  final String? subtitel;

  articelModel(this.image, this.titel, this.subtitel);

  factory articelModel.jusonModel(juson) {
    return articelModel(
        juson['urlToImage'], juson['title'], juson['description']);
  }
}
