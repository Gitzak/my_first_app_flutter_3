import 'package:flutter/material.dart';
import 'package:my_first_app/core/constants.dart';
import 'package:my_first_app/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Zak Dev'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+00000000000'),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('zak@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web_sharp),
            title: Text('www.zak-dev.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
