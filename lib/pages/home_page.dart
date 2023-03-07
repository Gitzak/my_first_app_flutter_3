import 'package:flutter/material.dart';
import 'package:my_first_app/class/item_class.dart';
import 'package:my_first_app/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              // title: 'Title 2',
              // imagePath: 'images/space.png',
              // description: 'This is a description',
              box: ItemClass(
                title: 'Rocket',
                description: 'This is a description of rocket',
                imagePath: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Space',
                      description: 'This is a description of space',
                      imagePath: 'images/space.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Travel',
                      description: 'This is a description of travel',
                      imagePath: 'images/travel.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Yeah !',
                description: 'This is a description of success story',
                imagePath: 'images/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
