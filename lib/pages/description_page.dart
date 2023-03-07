import 'package:flutter/material.dart';
import 'package:my_first_app/class/item_class.dart';
import 'package:my_first_app/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.home),
        ),
        title: Text(widget.box.title),
        backgroundColor: Colors.blue.shade200,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Hello SnackBar'),
                  behavior: SnackBarBehavior.floating,
                ));
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(kDouble20),
                child: Image.asset(widget.box.imagePath),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: kDouble5, bottom: kDouble10),
                child: Wrap(
                  spacing: kDouble10,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 25.0;
                        });
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.blue[500],
                      ),
                      child: const Text('Small'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 50.0;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.blue,
                        ),
                        foregroundColor: Colors.blue,
                      ),
                      child: const Text('Medium'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 75.0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Large'),
                    ),
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 200.0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Huge'),
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: fontSizeCustom,
                    fontWeight: FontWeight.bold,
                    // color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(
                height: kDouble10,
              ),
              const Text(
                'Duis reprehenderit in aute sit id. Nisi laborum excepteur enim dolore aliqua consectetur cupidatat culpa culpa anim ipsum cupidatat excepteur voluptate. Magna quis velit aliqua sunt pariatur adipisicing. Nisi laborum excepteur enim dolore aliqua consectetur cupidatat culpa culpa anim ipsum cupidatat excepteur voluptate. Magna quis velit aliqua sunt pariatur adipisicing. Nisi laborum excepteur enim dolore aliqua consectetur cupidatat culpa culpa anim ipsum cupidatat excepteur voluptate. Magna quis velit aliqua sunt pariatur adipisicing. Nisi laborum excepteur enim dolore aliqua consectetur cupidatat culpa culpa anim ipsum cupidatat excepteur voluptate. Magna quis velit aliqua sunt pariatur adipisicing.',
                style: TextStyle(
                  fontSize: 18,
                  // color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
