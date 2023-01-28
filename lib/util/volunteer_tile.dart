import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolunteerTile extends StatelessWidget {
  final String volunteerImagePath;
  final String volunteerName;
  final String volunteerLocation;
  final String volunteerDate;

  VolunteerTile({
    required this.volunteerImagePath,
    required this.volunteerName,
    required this.volunteerLocation,
    required this.volunteerDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 10, left: 25, right: 25),
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            volunteerImagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
