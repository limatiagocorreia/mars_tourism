import 'package:flutter/material.dart';
import 'package:mars_tourism/components/moon_button.dart';
import 'package:mars_tourism/components/moon_page.dart';
import 'package:mars_tourism/modules/menu/menu_controller.dart';
import 'package:mars_tourism/modules/planet_detail/planet_detail_page.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuPageState();
  }
}

class _MenuPageState extends State<MenuPage> {
  final menuController = MenuController();
  @override
  void initState() {
    super.initState();
    menuController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MoonPage(
      pageTitle: 'Menu Principal',
      body: Column(
        children: [
          Text('Planeta: ${menuController.selectedPlanet?.name.toString()} '),
          const SizedBox(
            height: 15.0,
          ),
          MoonButton(
              bgColor: menuController.selectedPlanet?.predominantColor,
              buttonText: 'Ver mais sobre planeta',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => PlanetDetailPage(
                          planet: menuController.selectedPlanet!,
                        )), 
                  ),
                );
              }),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisSpacing: 25,
              mainAxisSpacing: 24,
              crossAxisCount: 2,
              children: List.generate(menuController.planets.length, (index) {
                var planet = menuController.planets[index];
                return ElevatedButton(
                  child: Center(child: Text(planet.name.toString())),
                  onPressed: () {
                    menuController.selectPlanet(
                      planetModel: planet,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: planet.predominantColor),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
