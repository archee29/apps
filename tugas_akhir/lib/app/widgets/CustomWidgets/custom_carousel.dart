import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarousel extends StatelessWidget {
  final List<String> values;
  final Function onSelect;
  final int defaultPosition;

  const CustomCarousel({
    super.key,
    required this.values,
    required this.onSelect,
    required this.defaultPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          items: [
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqqqTEDG47DmRff3nNLGXTq5CpMgiPWaVfw56m-Ulnb86AT005TvuIaQB58jJURMKlHk&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 380.0,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 16 / 9,
            initialPage: defaultPosition,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ),
    );
  }
}
