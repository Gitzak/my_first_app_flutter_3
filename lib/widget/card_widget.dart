import 'package:flutter/material.dart';
import 'package:my_first_app/class/item_class.dart';
import 'package:my_first_app/core/constants.dart';
import 'package:my_first_app/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    // required this.title,
    // required this.description,
    // required this.imagePath,
    required this.box,
  });

  // final String title;
  // final String description;
  // final String imagePath;

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DescriptionPage(box: box);
          },
        ));
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: kDouble10,
              ),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(box.description),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
