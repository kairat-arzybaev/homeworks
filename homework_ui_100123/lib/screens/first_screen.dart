import 'package:flutter/material.dart';
import 'package:homework_ui_100123/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 34),
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        color: Color(0xFFA9A7A7),
                        fontSize: 16,
                        letterSpacing: -0.03,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Image(
              height: 303,
              width: 371,
              image: AssetImage('assets/images/2.png'),
            ),
            const SizedBox(height: 113),
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 40, color: Color(0xFF000000)),
            ),
            const SizedBox(height: 25),
            const SizedBox(
              height: 46,
              width: 262,
              child: Text(
                'There are so many things you have to experience in your life...',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
