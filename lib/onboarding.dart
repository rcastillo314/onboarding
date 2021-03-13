import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/back.png'),
                  Text('Skip'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 34.0),
              constraints: BoxConstraints.expand(height: 300.0),
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/girl.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width * 0.60,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  'Visable changes in 3 weeks',
                  style: TextStyle(fontSize: 38.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Get my plan'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Lato',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: _colorFromHex('#A75DB4'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Sign In',
                style: TextStyle(
                    color: _colorFromHex('#737CA4'),
                    fontSize: 18.0,
                    fontFamily: 'Lato'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
