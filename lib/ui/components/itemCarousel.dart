import 'package:flutter/material.dart';

class ItemCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-40,
          height: MediaQuery.of(context).size.height/3.5,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("images/image2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 20, left: 20),
                child: Text(
                  "AirBnb raises shares",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      "8 hrs ago",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      " @airbnb",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.5), fontSize: 15),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
