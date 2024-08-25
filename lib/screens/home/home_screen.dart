import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/Blog.dart';
import 'package:news/responsive.dart';

import '../../widgets/category_card.dart';
import '../services/details_screen.dart';
import '../services/services_screen.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset("assets/images/tractor.png"),
      Image.asset("assets/images/van.png"),
      Image.asset("assets/images/car.png"),
      Image.asset("assets/images/auto.png"),
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Expanded(
        //   flex: 2,
        //   child: Column(
        //     children: List.generate(
        //       blogPosts.length,
        //       (index) => BlogPostCard(blog: blogPosts[index]),
        //     ),
        //   ),
        // ),
        Flexible(
            child: Column(
          children: [
          /*  CarouselSlider(
              items: images,
              options: CarouselOptions(
                height: 200,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),*/

            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: .85,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServicesScreen()),
                      );
                    },
                    child: CategoryCard(
                      title: "Van",
                      svgSrc: "assets/images/van.png",
                      press: () {},
                    ),
                  );
                }),
              ),
            )
          ],
        )),

        /*  if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),*/
      ],
    );
  }
}
