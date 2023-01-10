import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
                    Navigator.pop(context);
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
            const SizedBox(height: 65),
            const Image(
              height: 221,
              width: 270,
              image: AssetImage('assets/images/1.png'),
            ),
            const SizedBox(height: 21),
            const Text(
              'MyDay team',
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 81),
            const Padding(
              padding: EdgeInsets.only(left: 38, right: 36),
              child: SizedBox(
                height: 75,
                width: 330,
                child: Text(
                  textAlign: TextAlign.center,
                  'prepared for you list of tasks to keep yourself busy and challenged every day, making it more fun and enjoyable',
                  style: TextStyle(
                      letterSpacing: -0.41,
                      fontSize: 16,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
