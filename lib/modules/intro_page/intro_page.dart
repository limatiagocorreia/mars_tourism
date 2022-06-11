import 'package:flutter/material.dart';
import 'package:mars_tourism/components/moon_button.dart';
import 'package:mars_tourism/components/moon_page.dart';
import 'package:mars_tourism/modules/intro_page/intro_controller.dart';
import 'package:mars_tourism/modules/menu/menu_page.dart';

class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroPageState();
  }
}

class _IntroPageState extends State<IntroPage> {
  final introController = IntroController();

  @override
  void initState() {
    super.initState();
    introController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MoonPage(
      pageTitle: 'Quem Somos',
      body: Column(
        children: [
          MoonButton(
            buttonText: 'menu de planetas',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => MenuPage()),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Visibility(
            maintainState: true,
            maintainAnimation: true,
            visible: introController.isFoundersVisible,
            child: Column(
              children: const [
                Text(
                    '3 SIT\nBruno Henrique - 86090\nHenrique Bedin Ruffato - 85289\nTiago Correia de lima - 86168'),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          MoonButton(
            buttonText: 'Ver Fundadores',
            onPressed: () {
              introController.toggleVisibility();
            },
          )
        ],
      ),
    );
  }
}
