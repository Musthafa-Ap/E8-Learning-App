import 'package:flutter/material.dart';
import 'package:nuox_project/pages/featured/sections/top_courses_section/see_all_page_top_courses.dart';

import '../../../../constants/constants.dart';
import '../../../../widgets/bold_heading.dart';
import '../../../../widgets/see_all_widget.dart';
import '../../widgets/small_item_card.dart';

class TopCoursesSection extends StatelessWidget {
  const TopCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BoldHeading(heading: "Top Courses in Mobile\nDevelopment"),
        SizedBox(
          height: size * .75,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SmallItemCard();
                    }),
                KWidth30,
                GestureDetector(
                  child: SeeAllWidget(),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SeeAllPageTopCourses()));
                  },
                ),
                KWidth30
              ],
            ),
          ),
        )
      ],
    );
  }
}
