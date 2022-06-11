import 'package:flutter/material.dart';
import 'package:mars_tourism/components/moon_clickable_image.dart';
import 'package:mars_tourism/components/moon_page.dart';
import 'package:mars_tourism/model/planet_model.dart';
import 'package:mars_tourism/modules/planet_galery/planet_galery_controller.dart';

class PlanetGaleryPage extends StatefulWidget {
  final PlanetModel? planet;

  const PlanetGaleryPage({required this.planet});

  @override
  State<StatefulWidget> createState() {
    return _PlanetGaleryPage(selectedPlanet: planet);
  }
}

class _PlanetGaleryPage extends State<PlanetGaleryPage> {
  final PlanetModel? selectedPlanet;
  PlanetGaleryController planetGaleryController = PlanetGaleryController();

  _PlanetGaleryPage({
    this.selectedPlanet,
  });

  @override
  void initState() {
    super.initState();
    planetGaleryController.setPlanet(selectedPlanet!);
    planetGaleryController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MoonPage(
        pageTitle:
            'Galeria de ${planetGaleryController.selectedPlanet?.name.toString()}',
        body: Column(
          children: [
            Visibility(
                maintainState: true,
                maintainAnimation: true,
                visible: planetGaleryController.isImageVisible,
                child:
                    Image.asset(planetGaleryController.imagePath.toString())),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisSpacing: 25,
                mainAxisSpacing: 24,
                crossAxisCount: 2,
                children: List.generate(
                    planetGaleryController.selectedPlanet!.imagesPath.length,
                    (index) {
                  var planet =
                      planetGaleryController.selectedPlanet!.imagesPath[index];
                  return MoonClickableImage(
                    body: Image.asset(planet),
                    onTap: () {
                      planetGaleryController.setSelectedImage(planet);
                    },
                  );
                }),
              ),
            ),
          Text('Clique na imagem para selecionar')
          ],
        ),);
  }
}
