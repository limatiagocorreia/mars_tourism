import 'package:flutter/material.dart';
import 'package:mars_tourism/components/moon_button.dart';
import 'package:mars_tourism/components/moon_page.dart';
import 'package:mars_tourism/model/planet_model.dart';
import 'package:mars_tourism/modules/planet_detail/planet_detail_controller.dart';
import 'package:mars_tourism/modules/planet_galery/planet_galery_page.dart';

class PlanetDetailPage extends StatefulWidget {
  final PlanetModel planet;
  const PlanetDetailPage({required this.planet});

  @override
  State<StatefulWidget> createState() {
    return _PlanetDetailPage(selectedPlanet: planet);
  }
}

class _PlanetDetailPage extends State<PlanetDetailPage> {
  PlanetDetailController planetDetailController = PlanetDetailController();

  final PlanetModel selectedPlanet;
  _PlanetDetailPage({required this.selectedPlanet});

  @override
  void initState() {
    super.initState();
    planetDetailController.setPlanet(selectedPlanet);
    planetDetailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MoonPage(
      pageTitle:
          'Detalhes de ${planetDetailController.planet?.name.toString()}',
      body: Column(
        children: [
          MoonButton(
            buttonText: 'Ver galeria',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => PlanetGaleryPage(
                        planet: planetDetailController.planet,
                      )),
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          Text(
            'Diametro: ${planetDetailController.planet?.diameter.toString()}',
            style: TextStyle(
              fontSize: planetDetailController.fontSize,
            ),
          ),
          Text(
            'Area superficie: ${planetDetailController.planet?.surfaceArea.toString()}',
            style: TextStyle(
              fontSize: planetDetailController.fontSize,
            ),
          ),
          Text(
            'Massa: ${planetDetailController.planet?.mass.toString()}',
            style: TextStyle(
              fontSize: planetDetailController.fontSize,
            ),
          ),
          Text(
            'Distancia Sol: ${planetDetailController.planet?.sunDistance.toString()}',
            style: TextStyle(
              fontSize: planetDetailController.fontSize,
            ),
          ),
          Text(
            'Gravidade: ${planetDetailController.planet?.gravity.toString()}',
            style: TextStyle(
              fontSize: planetDetailController.fontSize,
            ),
          ),
          Text(
            'Temperatura média: ${planetDetailController.planet?.avgTemp.toString()}',
            style: TextStyle(
              fontSize: planetDetailController.fontSize,
            ),
          ),
          Text(
            'Tem água líquida: ${planetDetailController.planet?.hasLiquidWater.toString()}',
            style: TextStyle(
              fontSize: planetDetailController.fontSize,
            ),
          ),
          const SizedBox(height: 16),
          MoonButton(
              buttonText: 'aA',
              onPressed: () {
                planetDetailController.increaseFont();
              }),
          const SizedBox(height: 16),
          MoonButton(
              buttonText: 'Aa',
              onPressed: () {
                planetDetailController.decreaseFont();
              }),
        ],
      ),
    );
  }
}
