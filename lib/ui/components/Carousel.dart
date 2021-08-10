import 'package:flutter/material.dart';
import 'package:news_app/ui/components/itemCarousel.dart';

class Carousel extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCarousel(),
                  ItemCarousel(),
                ],
              ),
       
      
    );
  }
}