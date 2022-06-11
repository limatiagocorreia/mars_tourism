import 'package:flutter/material.dart';

class PlanetModel {
  final String? name;
  final Color? predominantColor;
  final String? gravity;
  final bool? hasLiquidWater;
  final String? avgTemp;
  final String? diameter;
  final String? mass;
  final String? surfaceArea;
  final String? sunDistance;
  final List<String> imagesPath;

  PlanetModel({
    required this.name,
    required this.predominantColor,
    required this.gravity,
    required this.hasLiquidWater,
    required this.avgTemp,
    required this.imagesPath,
    required this.diameter,
    required this.mass,
    required this.surfaceArea,
    required this.sunDistance,
  });
}
