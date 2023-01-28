import 'package:flutter/material.dart';
import 'package:flutter_application_main/util/volunteer_categories.dart';
import 'package:flutter_application_main/util/volunteer_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class userSearch extends StatefulWidget {
  const userSearch({super.key});

  @override
  State<userSearch> createState() => _userSearchState();
}

class _userSearchState extends State<userSearch> {
  final List volunteerCategory = [
    [
      'Beach Cleanup',
      true,
    ],
    [
      'Trash Pickup',
      false,
    ],
    [
      'Church',
      false,
    ],
    [
      'Active',
      false,
    ],
  ];
  void volunterCategorySelected(int index) {
    setState(() {
      for (int i = 0; i < volunteerCategory.length; i++) {
        volunteerCategory[i][1] = false;
      }
      volunteerCategory[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 30, right: 10),
          child: Text(
            "Find a volunteer oppertunity near you",
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "Search product",
              prefixIcon: Icon(Icons.search),
              fillColor: Color.fromARGB(233, 218, 218, 218),
              filled: true,
            ),
          ),
        ),
        SizedBox(height: 25),
        Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: volunteerCategory.length,
                itemBuilder: (context, index) {
                  return VolunteerCategory(
                    volunteerCategory: volunteerCategory[index][0],
                    isSelected: volunteerCategory[index][1],
                    onTap: () {
                      volunterCategorySelected(index);
                    },
                  );
                })),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              VolunteerTile(
                volunteerImagePath: 'lib/assets/images/beach.jpg',
                volunteerName: 'Beach Cleanup',
                volunteerLocation: 'Kaimana Beach',
                volunteerDate: '12/20/22',
              ),
              VolunteerTile(
                volunteerImagePath: 'lib/assets/images/beach.jpg',
                volunteerName: 'Beach Cleanup',
                volunteerLocation: 'Kaimana Beach',
                volunteerDate: '12/20/22',
              ),
              VolunteerTile(
                volunteerImagePath: 'lib/assets/images/bagging.jpg',
                volunteerName: 'Food Drive',
                volunteerLocation: 'Kalihi',
                volunteerDate: '12/23/22',
              ),
              VolunteerTile(
                volunteerImagePath: 'lib/assets/images/trash.jpg',
                volunteerName: 'Trash Pickup',
                volunteerLocation: 'Iolani School',
                volunteerDate: '12/25/22',
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
