import 'package:flutter/material.dart';
import 'package:mars_tourism/components/moon_button.dart';
import 'package:mars_tourism/components/moon_clickable_text.dart';
import 'package:mars_tourism/components/moon_text_form.dart';
import 'package:mars_tourism/modules/intro_page/intro_page.dart';
import 'package:mars_tourism/modules/menu/menu_page.dart';
import 'package:mars_tourism/utils/padding_sizes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              MoonTextForm(label: 'eMail'),
              const SizedBox(height: 15.0),
              MoonTextForm(label: 'password'),
              const SizedBox(height: 15.0),
              MoonButton(
                buttonText: 'login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => IntroPage()),
                    ),
                  );
                },
              ),
              const SizedBox(height: 15.0),
              MoonButton(
                buttonText: 'createAccount',
                onPressed: () {},
              ),
              const SizedBox(height: 15.0),
              MoonClickableText(
                label: "Esqueci a senha",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
