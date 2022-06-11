import 'package:flutter/material.dart';
import 'package:mars_tourism/model/planet_model.dart';
import 'dart:math' as math;

class MenuController extends ChangeNotifier {
  List<PlanetModel> planets = [
    PlanetModel(
      name: 'Mercúrio',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '3,7 m/s²',
      hasLiquidWater: true,
      avgTemp: '427°C',
      imagesPath: [
        'assets/images/mercurio1.jpg',
        'assets/images/mercurio2.jpg',
        'assets/images/mercurio3.jpg'
      ],
      diameter: '4.879 Km',
      surfaceArea: '7,5 x 10^7 km²',
      mass: '3.302 x 10^23 Kg',
      sunDistance: '57.910.000 Km',
    ),
    PlanetModel(
      name: 'Terra',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '9,807 m/s²',
      hasLiquidWater: true,
      avgTemp: ' 15°C',
      imagesPath: [
        'assets/images/terra1.jpg',
        'assets/images/terra2.jpg',
        'assets/images/terra3.jpg'
      ],
      diameter: '12.756,2 Km',
      surfaceArea: '510.072.000 km²',
      mass: '5,9736 x 10^24 kg',
      sunDistance: '149.600.000 km',
    ),
    PlanetModel(
      name: 'Saturno',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '10,44 m/s²',
      hasLiquidWater: true,
      avgTemp: '-139 ºC',
      imagesPath: [
        'assets/images/saturno1.jpg',
        'assets/images/saturno2.jpg',
        'assets/images/saturno3.jpg'
      ],
      diameter: '116.464 Km',
      surfaceArea: '42.612.133.285 km²',
      mass: '568.319 x 10^21 kg',
      sunDistance: '1,4 bilhões de  km',
    ),
    PlanetModel(
      name: 'Vênus',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '8,87 m/s²',
      hasLiquidWater: true,
      avgTemp: '462°C',
      imagesPath: [
        'assets/images/venus1.jpg',
        'assets/images/venus2.jpg',
        'assets/images/venus3.jpg'
      ],
      diameter: '12.104 km',
      surfaceArea: '460.200.000 km²',
      mass: '4,867 × 10^24 kg',
      sunDistance: '108.209.475 km',
    ),
    PlanetModel(
      name: 'Marte',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '3,721 m/s²',
      hasLiquidWater: true,
      avgTemp: '−55°C',
      imagesPath: [
        'assets/images/marte1.jpg',
        'assets/images/marte2.jpg',
        'assets/images/marte3.jpg'
      ],
      diameter: '6.779 km',
      surfaceArea: '144.800.000 km²',
      mass: '6,39 × 10^23 kg',
      sunDistance: '227.940.000',
    ),
    PlanetModel(
      name: 'Júpiter',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '24,79 m/s²',
      hasLiquidWater: true,
      avgTemp: '-110°C',
      imagesPath: [
        'assets/images/jupiter1.jpg',
        'assets/images/jupiter2.jpg',
        'assets/images/jupiter3.jpg'
      ],
      diameter: '139.820 km',
      surfaceArea: '6,142 × 10^10 km²',
      mass: '1,898 × 10^27 kg',
      sunDistance: '778.330.000 km',
    ),
    PlanetModel(
      name: 'Urano',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '8,87 m/s²',
      hasLiquidWater: true,
      avgTemp: '-195°C',
      imagesPath: [
        'assets/images/urano1.jpg',
        'assets/images/urano2.jpg',
        'assets/images/urano3.jpg'
      ],
      diameter: '50.724 km',
      surfaceArea: '8,083 × 10^9 km²',
      mass: '8,681 × 10^25 kg',
      sunDistance: '2.870.990.000 km',
    ),
    PlanetModel(
      name: 'Netuno',
      predominantColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      gravity: '11,15 m/s²',
      hasLiquidWater: true,
      avgTemp: '-245°C',
      imagesPath: [
        'assets/images/netuno1.jpg',
        'assets/images/netuno2.jpg',
        'assets/images/netuno3.jpg'
      ],
      diameter: '49.244 km',
      surfaceArea: '7,618 × 10^9 km²',
      mass: '1,024 × 10^26 kg',
      sunDistance: '4.504.300.000 km',
    ),
  ];

  PlanetModel? selectedPlanet;
  selectPlanet({required PlanetModel planetModel}) {
    selectedPlanet = planetModel;
    notifyListeners();
  }
}
