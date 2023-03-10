// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final Icon icon;

  final String subtitle;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 60,
        width: 320,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.06),
                  blurRadius: 15,
                  offset: const Offset(0, 4))
            ],
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: _isTapped ? Colors.indigo : const Color(0xFFFFFFFF),
                width: 2)),
        child: Row(
          children: [
            widget.icon,
            const SizedBox(
              width: 18,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000)),
            ),
            const Spacer(),
            Text(
              widget.subtitle,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xFF898A8D),
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
