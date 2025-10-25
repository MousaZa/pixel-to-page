import 'package:flutter/material.dart';
import 'package:pixel_to_page/categories.dart';
import 'package:pixel_to_page/category_page.dart';
import 'package:pixel_to_page/colors.dart';
import 'package:pixel_to_page/fontstyles.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:pixel_to_page/form.dart';
import 'package:pixel_to_page/home_content.dart';
import 'package:pixel_to_page/map_dialog.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:star_menu/star_menu.dart';
import 'package:latlong2/latlong.dart';
List<String> languages = [
  "dansk",
  "deutsch",
  "english",
  "español",
  "français",
  "italiano",
  "português",
  "suomi",
  "svenska",
  "tiếng việt",
  "türkçe",
  "русский",
  "中文",
  "日本語",
  "한국말",
];


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showOverlayForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => const OverlayFormDialog(),
    );
  }
  void _showLocationPicker() async {
    final LatLng? selectedLocation = await showDialog<LatLng>(
      context: context,
      builder: (context) => const MapDialog(),
    );

    if (selectedLocation != null) {
      print('Selected: ${selectedLocation.latitude}, ${selectedLocation.longitude}');
      // Use the selected location here
    }
  }
  DateTime _selectedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("https://cdn-icons-png.flaticon.com/512/1884/1884188.png", width: 200, height: 200,),
                Text(
                  "craigslist",
                  style: AppFontStyles.bold.copyWith(
                    fontSize: 32,
                    color: AppColors.black,
                  ),
                ),
                // SizedBox(height: 16),
                Divider(),
                TableCalendar(
                  calendarStyle: CalendarStyle(
                    rangeHighlightColor: AppColors.secondary.withOpacity(0.5),
                    markerDecoration: BoxDecoration(
                      color: AppColors.secondary,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: AppColors.secondary,
                      shape: BoxShape.circle,
                    ),
                  ),

                  onDaySelected: (daySelected, focusedDay) {
                    setState(() {
                      _selectedDay = daySelected;
                    });
                  },
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _selectedDay,
                ),
              ],
            ),
          ),
          Expanded(child: Container(
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.location_on_outlined, color: AppColors.black),
                                  onPressed: () {
                                    _showLocationPicker();
                                  },
                                ),
                                Text("Turkey", style: AppFontStyles.regular,),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AnimSearchBar(
                            width: 400,
                            color: Colors.white,
                            style: AppFontStyles.regular,
                            // suffixIcon: Icon(Icons.search),
                            searchIconColor: AppColors.black,
                            boxShadow: true,
                            textController: TextEditingController(),
                            onSuffixTap: () {
                              print("Suffix tap");
                            },
                            onSubmitted: (value) {
                              print("Search submitted: $value");
                            },
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            StarMenu(
                              params: StarMenuParameters(
                                shape: MenuShape.linear,
                                linearShapeParams: LinearShapeParams(
                                  angle: 270,
                                  alignment: LinearAlignment.left,
                                  space: 4,
                                ),
                                animationCurve: Curves.easeInOut,
                                backgroundParams: BackgroundParams(
                                  backgroundColor: Colors.black.withOpacity(0.3),
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.language_outlined, color: AppColors.black),
                                onPressed: () {
                                  print("Language selector tapped");
                                },
                              ),
                              items: languages.asMap().entries.map((entry) {
                                return _LanguageMenuItem(
                                  language: entry.value,
                                  index: entry.key,
                                );
                              }).toList(),
                              onStateChanged: (state) => print('State changed: $state'),
                              onItemTapped: (index, controller) {
                                controller.closeMenu?.call();
                                print('Language selected: ${languages[index]} at index $index');
                              },
                            ),

                            SizedBox(width: 40, height: 20,child: VerticalDivider()),
                            IconButton(
                              icon: Icon(Icons.create_outlined, color: AppColors.black),
                              onPressed: () {
                                _showOverlayForm(context);
                              },
                            ),
                            SizedBox(width: 16),
                            IconButton(
                              icon: Icon(Icons.favorite_outline, color: AppColors.black),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryPage(category: AppCategory(title: "Favorilerim", description: "description", icon: Icons.favorite_outline), isFav: true,)));
                              },
                            ),
                            SizedBox(width: 16),
                            CircleAvatar(
                              backgroundColor: AppColors.secondary,
                              child: Text(
                                'M',
                                style: AppFontStyles.bold.copyWith(color: AppColors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  HomeContent(),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }

}

class _LanguageMenuItem extends StatefulWidget {
  final String language;
  final int index;

  const _LanguageMenuItem({
    required this.language,
    required this.index,
  });

  @override
  State<_LanguageMenuItem> createState() => _LanguageMenuItemState();
}

class _LanguageMenuItemState extends State<_LanguageMenuItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
          horizontal: _isHovered ? 20 : 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: _isHovered
              ? Colors.white
              : Colors.white.withOpacity(.7),
          borderRadius: BorderRadius.circular(8),
        ),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 200),
          style: AppFontStyles.regular.copyWith(
            color: AppColors.black,
            fontWeight: _isHovered ? FontWeight.w600 : FontWeight.normal,
          ),
          child: Text(widget.language),
        ),
      ),
    );
  }
}