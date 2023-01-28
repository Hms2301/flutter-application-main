import 'package:flutter/material.dart';

class VolunteerCategory extends StatelessWidget {
  final String volunteerCategory;
  final bool isSelected;
  final VoidCallback onTap;

  VolunteerCategory(
      {required this.volunteerCategory,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          volunteerCategory,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.purple : Colors.black,
          ),
        ),
      ),
    );
  }
}
