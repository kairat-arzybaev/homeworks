import 'package:flutter/material.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFF00F5), Color(0xFF00FFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Stack(
            children: [
              Container(
                height: 175,
                width: 175,
                margin: const EdgeInsets.only(top: 90),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFF09F6FF), Color(0xFFFF00F5)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 500, left: 140),
                alignment: Alignment.bottomRight,
                height: 275,
                width: 275,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFF09F6FF), Color(0xFFFF00F5)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
              ),
              Container(
                width: size.width,
                height: size.height * 0.65,
                padding: const EdgeInsets.symmetric(vertical: 20),
                margin: const EdgeInsets.symmetric(vertical: 160),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF).withOpacity(0.35),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Code',
                          hintStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: const Color(0x33FFFFFF),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 150),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Sign in',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: const Color(0x33FFFFFF),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Are you a new user?',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('Sign up'))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
