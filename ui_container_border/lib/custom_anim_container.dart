import 'package:flutter/material.dart';
import 'package:ui_container_border/styles/app_text_styles.dart';

class CustomAnimContainer extends StatefulWidget {
  final String levelText;
  final String months;
  const CustomAnimContainer({
    Key? key,
    required this.levelText,
    required this.months,
  }) : super(key: key);

  @override
  State<CustomAnimContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomAnimContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 20),
        padding: const EdgeInsets.only(top: 12),
        height: 120,
        width: 110,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.06),
                offset: const Offset(0, 4.0),
                blurRadius: 15,
                spreadRadius: 0.0)
          ],
          border: Border.all(
              width: selected ? 3 : 0,
              style: BorderStyle.solid,
              color:
                  selected ? const Color(0xFF5EE0B1) : const Color(0xFFFFFFFF)),
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Text(widget.levelText, style: AppTextStyles.title),
          const SizedBox(
            height: 15,
          ),
          Text(
            widget.months,
            style: AppTextStyles.countMonths,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'months',
            style: AppTextStyles.subtitle,
          ),
        ]),
      ),
    );
  }
}
