import 'package:flutter/material.dart';
import 'package:sign_in/assets/themes/app_colors.dart';

List<String> carSearchFilter = ['Family Cars', 'Cheap Cars', 'Luxury Cars'];

class CustomChip extends StatefulWidget {
  const CustomChip({super.key});

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  bool favorite = false;
  final List<String> _filters = [];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      children: carSearchFilter.map((String category) {
        return FilterChip(
          showCheckmark: false,
          label: Text(category),
          selected: _filters.contains(category),
          backgroundColor: Colors.white,
          selectedColor: AppColors.darkBlue,
          side: const BorderSide(width: 1),
          onSelected: (bool value) {
            setState(() {
              if (value) {
                if (!_filters.contains(category)) {
                  _filters.add(category);
                }
              } else {
                _filters.removeWhere((String name) {
                  return name == category;
                });
              }
            });
          },
        );
      }).toList(),
    );
  }
}
