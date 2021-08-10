import 'package:flutter/material.dart';

class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedCategory = 0;
  List<String> categories = ["New", "Popular", "Recomended"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20 / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Container(
          width: 90,
          decoration: BoxDecoration(
            color:index==selectedCategory? Colors.white:Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              categories[index],
              style: TextStyle(fontSize:15,color: index == selectedCategory
                        ? Color(0xFF12153D)
                        : Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                        ),
                  
                  ),
          ),
          ),
        ),
      
    );
  }
}