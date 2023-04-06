import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
            CarouselSlider(
              items: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: .85,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: <Widget>[
                  CategoryCard(
                    title: "Tractor",
                    svgSrc: "assets/images/tractor.png",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ServicesScreen();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Van",
                    svgSrc: "assets/images/van.png",
                    press: () {},
                  ),
                  CategoryCard(
                    title: "Auto",
                    svgSrc: "assets/images/auto.png",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DetailsScreen();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Car",
                    svgSrc: "assets/images/car.png",
                    press: () {},
                  ),
                ],
              ),
            ),
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
